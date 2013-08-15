#
# Cookbook Name:: passenger
# Recipe:: install

gem_package "passenger/system" do
  package_name 'passenger'
  not_if "test -e /usr/local/bin/rvm-gem.sh"
end

gem_package "passenger/rvm" do
  package_name 'passenger'
  gem_binary "/usr/local/rvm/bin/rvm all do"
  only_if "test -e /usr/local/rvm/bin/rvm"
end
