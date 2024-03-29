# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'public_holidays/version'

Gem::Specification.new do |spec|
  spec.name          = "public_holidays"
  spec.version       = PublicHolidays::VERSION
  spec.authors       = ["Adam Butler"]
  spec.email         = ["adam@littlebigmedia.co.uk"]
  spec.summary       = %q{A gem that provides helper functionality for working with dates in which public holidays are a concern.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "timecop", "~> 0.7.3"
end
