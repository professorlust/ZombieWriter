# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'zombie_writer/version'

Gem::Specification.new do |spec|
  spec.name          = "zombie_writer"
  spec.version       = ZombieWriter::VERSION
  spec.authors       = ["Tariq Ali"]
  spec.email         = ["tra38@nau.edu"]

  spec.summary       = %q{ZombieWriter is a Ruby gem that will enable users to generate news articles by aggregating paragraphs from other sources.}
  spec.description   = %q{While you have to provide the paragraphs, ZombieWriter will arrange the paragraphs into different articles for you to use and edit to your heart's content. You may choose between Machine Learning (Latent Semantic Analysis and k-means clustering) or Randomization.}
  spec.homepage      = "https://github.com/tra38/Zombie"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_runtime_dependency "classifier-reborn", "~> 2.1"
  spec.add_runtime_dependency "kmeans-clusterer", "~> 0.11.4"
  spec.add_runtime_dependency "redcarpet", "~> 3.4"
end
