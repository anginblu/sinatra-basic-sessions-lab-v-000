require_relative 'config/environment'

class App < Sinatra::Base
  configure do
    enable :sessions
    set :session_secret, "secret"
  end

  get '/' do
    erb :'views/index'
    @session = session
  end

  post 'checkout' do
    session[:item] = params[:item]
  end
end
