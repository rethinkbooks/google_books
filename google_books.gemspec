# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "google_books/version"

Gem::Specification.new do |s|
  s.name        = "google_books"
  s.version     = GoogleBooks::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Damien White"]
  s.email       = ["damien.white@visoftinc.com"]
  s.homepage    = "http://github.com/visoft/google_books"
  s.summary     = %q{A Ruby wrapper around the Google Books API}
  s.description = %q{A Ruby wrapper that allows you to query the Google Books API. This project was inspired by google-book, see the README for more information}
  
  s.add_dependency('httparty')
  s.add_dependency('hashie')
  
  s.add_development_dependency('autotest')
  s.add_development_dependency('rspec')
  s.add_development_dependency('webmock')
  s.add_development_dependency('vcr')

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end