require_relative 'config/environment'

class App < Sinatra::Base
  
  get "/reversename/:name" do 
    @reverse_name = params[:name].reverse 
    @reverse_name
  end
  
  get "/square/:number" do
    @number = params[:number].to_i**2 
    @number.to_s
    
  end 
  
  get "/say/:number/:phrase" do
    str = ""
    @number = params[:number]
    @phrase = params[:phrase]
    @number.times {str += "#{:phrase}"}
  end
  
  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{@word1} #{@word2} #{@word} #{@word4} #{@word5}"
  end
  
  get "/:operation/:number1/:number2" do
    @number1 = params[:number1]
    @number2 = params[:number2]
    "#{@number1 + @number2}"
  end
end