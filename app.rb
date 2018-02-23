require 'sinatra/base'
ENV['RACK_ENV'] ||= 'development'

set :views, Proc.new { File.join(root, "views") }

require 'bundler'
Bundler.require :default, ENV['RACK_ENV'].to_sym
require_relative 'routes'

class Ideas < Sinatra::Base
  set :root, File.dirname(__FILE__)
  enable :sessions

  get '/' do
    'Cafe'
  end
end 
