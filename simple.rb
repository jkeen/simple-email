require 'rubygems'
require 'sinatra'
require 'erb'
#require 'action_mailer'

helpers do
  include Rack::Utils
end

get '/' do
  erb :index
end

get '/send'
  redirect '/'
end

post '/send' do
  if params[:email] =~ /@/
    @success = true;
  else
    @errors = "<span>Invalid email address</span>"
  end
  erb :index
end

