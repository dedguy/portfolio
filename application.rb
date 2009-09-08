APP_ROOT = File.expand_path(File.dirname(__FILE__))

require 'rubygems'
require 'sinatra'
require 'haml'
require 'sass'

set :root, APP_ROOT

set :haml, :format => :html5

enable :static

get '/' do
  haml :index
end

get '/stylesheets/screen.css' do
  headers 'Content-Type' => 'text/css; charset=utf-8'
  sass :screen
end
