require 'rubygems'
require 'bundler/setup'
Bundler.require(:test)
require File.expand_path('./server/app.rb')
require 'helpers/auth_helper'

RSpec.configure do |config|
  config.include Rack::Test::Methods
end

def app
  MakeMe::App
end
