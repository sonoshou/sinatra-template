require 'bundler'
require 'sinatra/base'
Bundler.require

class MyApp < Sinatra::Base
  get '/' do
    @title = "Title Test"
    haml :index
  end

  get '/:name' do |name|
    @title = "#{name}"
    haml :index
  end
end

