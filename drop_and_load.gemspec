# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'drop_and_load/version'

Gem::Specification.new do |spec|
  spec.name          = "drop-and-load-rails"
  spec.version       = DropAndLoad::VERSION
  spec.authors       = ["Andrew Stephenson"]
  spec.email         = ["Andrew.Stephenson123@gmail.com"]

  spec.summary       = %q{Drag and drop file uploading made simple}
  spec.description   = %q{A collection of form helpers, js, and css files to make drag and drop file uploading as simple as a few method calls}
  spec.homepage      = "https://github.com/andrewls/drop-and-load-rails"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
  spec.add_development_dependency "minitest-reporters"
end
