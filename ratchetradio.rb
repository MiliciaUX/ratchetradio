require 'sinatra'
require 'sinatra/activerecord'
require 'bundler/setup'
require 'rack-flash'
require 'geocoder'

set :database, "sqlite3:example.sqlite3"

get '/layout' do
	erb :layout
end	

get '/' do 
	erb :home
end

get '/home' do 
	erb :home
end

get '/signup' do
	erb :signup
end

post '/signup' do
	@user = User.new(params[:user])
	if user.save
		redirect '/'
	else
		redirect '/signup'
	end
end	

get '/upload' do
	erb :upload
end			