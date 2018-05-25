require_relative 'config/environment'
require_relative 'models/puppy.rb'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/new' do
    erb :create_puppy
  end

  post '/display_puppy' do
    @name = params[:name]
    @breed = params[:breed]
    @age = params[:age]

    @display = Puppy.new(@name, @breed, @age)

    erb :display_puppy
  end
end
