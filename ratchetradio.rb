require 'sinatra'
require 'sinatra/activerecord'
require 'rack-flash'
require 'geocoder'

set :database, "sqlite3:example.sqlite3"

get '/' do 
	erb :rockstar
end

get '/about' do
	erb :about
end