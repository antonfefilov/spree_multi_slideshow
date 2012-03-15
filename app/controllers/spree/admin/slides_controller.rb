module Spree
  module Admin
    class SlidesController < BaseController
      before_filter :load_data

      def load_data
        @slideshow_type = Spree::SlideshowType.find(params[:slideshow_type_id])
      end

      def update_positions
        params[:positions].each do |id, index|
          Spree::Image.update_all(['position=?', index], ['id=?', id])
        end

        respond_to do |format|
          format.js  { render :text => 'Ok' }
        end
      end

      private

      def location_after_save
        admin_slideshow_type_slides_url(@slideshow_type)
      end

    end
  end
end
