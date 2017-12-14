require_relative 'config/environment'

class App < Sinatra::Base

  configure do
    enable :sessions
    set :session_secret, "dragon"
  end

  get '/' do
    erb :index
  end

  post '/checkout' do
    #binding.pry
    session[:items] = params
    @sessions = session
  end
end
