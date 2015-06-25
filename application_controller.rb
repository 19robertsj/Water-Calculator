require 'bundler'
Bundler.require
require_relative "models/calc.rb"

class MyApp < Sinatra::Base
	
  get '/' do
		erb :home 
	end
  
  get '/calculator' do 
      erb :calculator 
    end 
  
	get '/about' do
		erb :about 
	end
  
  post '/calculate' do
      weight_convert = params["weight-input"]
      workout_add = params["workout-input"]
      temperature_warn = params["temp-input"]

      calc = Calculator.new(weight_convert, workout_add, temperature_warn)

      @weight = calc.convert_weight
      @workout = calc.add_workout
      @temperature = calc.warn_temperature
    puts @temperature
      @all_ounces = (@weight + @workout)
      erb :to_drink
  end

end