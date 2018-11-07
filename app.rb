require './environment'

module FormsLab
  class App < Sinatra::Base
    get "/" do
      erb :root
    end

    get "/new" do
      erb :"pirates/new"
    end

    post "/pirates" do
      @pirate = Pirate.new(params[:pirate])
      ships = params[:pirate][:ships].map { |ship_hash| Ship.new(ship_hash) }
      @ship1 = ships[0]
      @ship2 = ships[1]
      erb :"pirates/show"
    end
  end
end
