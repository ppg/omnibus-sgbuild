name "sgbuild"
default_version "0.3.2"

dependency "ruby"
dependency "rubygems"
dependency "bundler"

source :git => "git@github.com:sendgrid/sgbuild.git"

relative_path "sgbuild"

build do
  env = with_standard_compiler_flags(with_embedded_path)
  bundle "install --without development_extras", env: env
  bundle "exec rake install", env: env
end
