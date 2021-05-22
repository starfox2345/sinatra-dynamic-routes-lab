require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    @name = "#{params[:name].reverse}"
    # "#{@name}"
    # @name = params[:name]
    # "#{@name.reverse}"
  end

  get "/square/:number" do
    @num = "#{params[:number].to_i * params[:number].to_i}"
    # "#{@num}"
  end

  get "/say/:number/:phrase" do
    @phrase_times = "#{params[:phrase] * params[:number].to_i}"
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    # binding.pry
    @say_word = "#{params[:word1] + " " + params[:word2] + " " + params[:word3] + " " + params[:word4] + " " + params[:word5]}."
  end

  get "/:operation/:number1/:number2" do
    binding.pry
    if params[:operation] == "add"
      @sum = "#{params[:number1].to_i + params[:number2].to_i}"
    elsif params[:operation] == "subtract" 
      @subtract = "#{params[:number1].to_i - params[:number2].to_i}"
    elsif params[:operation] == "multiply" 
      @product = "#{params[:number1].to_i * params[:number2].to_i}"
    elsif params[:operation] == "divide"  
      @divide = "#{params[:number1].to_i / params[:number2].to_i}"
    else
    end  
  end
end