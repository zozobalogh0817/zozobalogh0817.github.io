# frozen_string_literal: true

Gem::Specification.new do |s|
  s.name          = "wiki-theme"
  s.version       = "0.0.1"
  s.authors       = ["Balogh Zoltán Sándor"]
  s.email         = ["zoltan.balogh@avolantis.net"]
  s.homepage      = "https://github.com/zozobalogh0817/wiki-theme"
  s.summary       = "Wiki theme for GitHub pages based on Primer Theme"

  s.files         = `git ls-files -z`.split("\x0").select do |f|
    f.match(%r{^(assets|_(includes|layouts|sass)/|(LICENSE|README)((\.(txt|md)|$)))}i)
  end

  s.platform      = Gem::Platform::RUBY
  s.license       = "MIT"

  s.required_ruby_version = ">= 2.4.0"

  s.add_dependency "jekyll", "> 3.5", "< 5.0"
  s.add_runtime_dependency "jekyll-github-metadata", "~> 2.9"
  s.add_runtime_dependency "jekyll-seo-tag", "~> 2.0"
  s.add_development_dependency "html-proofer", "~> 3.0"
  s.add_development_dependency "rubocop-github", "~> 0.16"
  s.add_development_dependency "w3c_validators", "~> 1.3"
end
