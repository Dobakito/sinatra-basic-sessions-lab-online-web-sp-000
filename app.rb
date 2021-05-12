require_relative 'config/environment'

class App < Sinatra::Base
  configure do
    enable :sessions
    set :session_secret, "def_not_secret"
  end

  get '/' do
    erb :index
  end

  post '/checkout' do
    @session = session
    @item = params[:item]
    @session[:item] = @item
    erb :checkout
  end
end
