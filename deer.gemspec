require_relative 'lib/deer/version'

Gem::Specification.new do |spec|
  spec.name          = "deer"
  spec.version       = Deer::VERSION
  spec.authors       = ["andrustory"]
  spec.email         = ["jc1993box@hotmail.com"]

  spec.summary       = "Simple Ruby CLI app"
  spec.description   = "Use API data to get a list of SOMETHING"
  spec.homepage      = "https://github.com/andrustory/deer"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "http://mygemserver.com"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/andrustory/deer"
  spec.metadata["changelog_uri"] = "https://github.com/andrustory/deer"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "pry"
end
 
