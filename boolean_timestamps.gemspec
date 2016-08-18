# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'boolean_timestamps/version'

Gem::Specification.new do |spec|
  spec.name          = "boolean_timestamps"
  spec.version       = BooleanTimestamps::VERSION
  spec.authors       = ["BetterUp Developers"]
  spec.email         = ["developers@betterup.co"]

  spec.summary       = %q{Add boolean attributes to models for simple timestamps}
  spec.description   = %q{Add boolean psuedo attributes to models that transparently manage underlying timestamp attributes}
  spec.homepage      = "https://www.github.com/betterup/boolean_timestamps"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency 'rails', '>= 5.0'

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
