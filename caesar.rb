require 'sinatra'
require 'sinatra/reloader'
require './caesar_cipher'
background = "background: yellow"

get '/' do 
	if !params['message'].nil?
		message = params['message']
		translation = caesar_cipher(message)
	end

	erb :index, :locals => { :translation => translation, :background => background}
end