require 'sinatra'
require 'json'
require 'erb'

pets = JSON.parse File.read("./pets.json")
pets.sort! { |a,b| a[1] <=> b[1] }

get '/' do
  redirect '/nazjatar'
end

get '/:realm' do |realm|
  @pets = pets
  @realm = realm
  erb :index
end

get '/pets' do
  pets.inspect
end
