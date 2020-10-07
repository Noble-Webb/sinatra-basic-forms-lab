require_relative 'config/environment'

class App < Sinatra::Base
    get '/' do 
        erb :index
    end

    get '/new' do
        erb :create_puppy
    end

    post '/new/:puppy' do
      @puppy = Puppys.new(params['name'], params['breed'], params['age'])
        erb :display_puppy
    end
end
