require 'bundler'
require 'sinatra/base'
require 'sinatra/reloader'
require './hash'
Bundler.require

class MyApp < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    @title = "Title Test"
    haml :index
  end

  get '/:name' do |name|
    @title = "#{name}"
    haml :index
  end

  get '/hash' do
    @title = Hash::List[:test]
    haml :index
  end
end

