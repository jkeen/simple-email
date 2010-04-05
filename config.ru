require 'rubygems'
require 'sinatra'

root_dir = File.dirname(__FILE__)

set :environment, ENV['RACK_ENV']
set :root, root_dir
set :app_file, File.join(root_dir, 'simple.rb') 
set :views, File.join(root_dir, 'views') 
set :public, File.join(root_dir, 'public') 

disable :run

require 'simple'
run Sinatra::Application
