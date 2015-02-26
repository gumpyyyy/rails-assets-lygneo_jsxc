# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rails-assets-diaspora_jsxc/version'

Gem::Specification.new do |spec|
  spec.name          = "rails-assets-diaspora_jsxc"
  spec.version       = RailsAssetsDiasporaJsxc::VERSION
  spec.authors       = ["rails-assets.org"]
  spec.description   = "XMPP javascript client for diaspora"
  spec.summary       = "XMPP javascript client for diaspora"
  spec.homepage      = "https://github.com/diaspora/jsxc"
  spec.license       = "MIT"

  spec.files         = `find ./* -type f | cut -b 3-`.split($/)
  spec.require_paths = ["lib"]

  spec.add_dependency "rails-assets-jquery", "~> 1.11.1"
  spec.add_dependency "rails-assets-jquery-ui", "~> 1.10.4"
  spec.add_dependency "rails-assets-jquery-colorbox", "~> 1.5.14"
  spec.add_dependency "rails-assets-jquery.slimscroll", "~> 1.3.3"
  spec.add_dependency "rails-assets-jquery-fullscreen", "~> 1.1.4"
  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
