require_relative './config/init.rb'
set :run, true

get '/' do
  @name = "Ben Gibbons"
  @date = Time.now.strftime("%d/%m/%Y %H:%M") 
  erb :"home"
end

get '/signup' do
  
  erb :"signup"
end


post '/signup' do
  user = User.new(params[:user])
	user.save 
		
	redirect '/welcome'

		
		
	end



get '/welcome' do
	erb :welcome
end

get '/login' do
	erb :"login"
end


 post '/login' do
 	user = User.find_by(email: params[:email])
   	session[:user_id] = user.id
   	session[:user_name] = user.name

   	redirect '/loggedinsplash'
   		
   	end


get '/loggedinsplash' do
	erb :"loggedinsplash"

end
 

	#erb :"loggedinsplash"
  # apply a authentication method to check if a user has entered a valid email and password
  # if a user has successfully been authenticated, you can assign the current user id to a session


get '/logout' do
	session[:user_id] = nil
	redirect '/'
	  # kill a session when a user chooses to logout, for example, assign nil to a session
  # redirect to the appropriate page
end  
