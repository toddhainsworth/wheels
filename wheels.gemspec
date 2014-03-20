# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'wheels/version'

Gem::Specification.new do |spec|
  spec.name          = "Wheels"
  spec.version       = Wheels::VERSION
  spec.authors       = ["Todd Hainsworth"]
  spec.email         = ["todd@staff.mindvision.com.au"]
  spec.summary       = %q{Wheels is a Rack-based Ruby Web Framework}
  spec.description   = %q{Wheels is a Rack-based Ruby Web Framework, it's purpose is to teach me.}
  spec.homepage      = "http://github.com/toddhainsworth/wheels"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_runtime_dependency "rack"
end
