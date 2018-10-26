# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ya-kassa/version'

Gem::Specification.new do |spec|
  spec.name          = 'ya-kassa'
  spec.version       = YaKassa::VERSION
  spec.authors       = ['Andrey Paderin']
  spec.email         = ['andy.paderin@gmail.com']

  spec.summary       = ''
  spec.homepage      = 'https://github.com/paderinandrey/ya-kassa'
  spec.license       = 'MIT'

  spec.required_ruby_version = '>= 2.3'

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'evil-client', '~> 3.0'

  spec.add_development_dependency 'bundler', '~> 1.17'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.5'
  spec.add_development_dependency 'rubocop', '~> 0.60'
  spec.add_development_dependency 'simplecov', '~> 0.16'
end
