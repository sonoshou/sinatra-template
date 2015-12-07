require 'bundler'
Bundler.require

get '/' do
  @title = "Title Test"
  haml :index
end
