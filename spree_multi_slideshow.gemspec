# encoding: UTF-8
Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_multi_slideshow'
  s.version     = '1.3.0'
  s.summary     = 'Extension to manage multi slideshow for Spree Shop'
  s.required_ruby_version = '>= 1.8.7'

  s.author            = 'Damiano Giacomello'
  s.email             = 'damiano.giacomello@diginess.it'
  # s.homepage          = 'http://www.rubyonrails.org'

  #s.files         = `git ls-files`.split("\n")
  s.files        = Dir['CHANGELOG', 'README.md', 'LICENSE', 'lib/**/*', 'app/**/*', 'db/**/*', 'config/**/*']
  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_dependency 'spree_core', '>= 1.3.0'
  
  s.add_dependency 'aws-sdk', '1.27.0'
  s.add_dependency 'paperclip'
end

