# frozen_string_literal: true

require_relative "lib/sam_gem/version"

Gem::Specification.new do |spec|
  spec.name = "sam_gem"
  spec.version = SamGem::VERSION
  spec.authors = ["samueltanner"]
  spec.email = ["samuel.m.s.tanner@gmail.com"]

  spec.summary = "This is Sam_Gem which will generate random numbers for a variety of different situations."
  spec.description = "Will generate dice rolling, card pulling, lotto numbers and coin flipping."
  spec.homepage = "https://github.com/samueltanner"
  spec.license = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "http://mygemserver.com'/api/v1/api_key"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/samueltanner/sam_gem"
  spec.metadata["changelog_uri"] = "https://github.com/samueltanner/sam_gem/blob/main/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
end
