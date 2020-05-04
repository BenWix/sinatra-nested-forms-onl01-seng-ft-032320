require './environment'
require 'pry'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do 
      erb :root
    end

    get '/new' do 
      erb :new
    end 

    post '/pirates' do 
      @pirate = Pirate.new(params[:pirate])
      params[:pirate][:ships].each{|ship| Ship.new(ship)}

      @ships = Ship.all 

      #binding.pry
      erb :show
    end
  end
end
