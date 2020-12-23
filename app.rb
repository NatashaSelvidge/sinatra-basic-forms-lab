require_relative 'config/environment'
#user goes to home page
#follow link to a form where user input puppy info
#when user submits view puppy info
class App < Sinatra::Base
  get '/' do 
    erb :index
  end

  get '/new' do
    erb :create_puppy
  end

  post '/puppy' do 
    @puppy = Puppy.new(params[:name],params[:breed],params[:age])
    erb :display_puppy
  end 

end
