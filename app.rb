require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get '/square/:number' do
    @number = params[:number].to_i
    "#{@number * @number}"
  end

  get '/say/:number/:phrase' do
    string = ""
    
    (params[:number].to_i).times do 
      string += "#{params[:phrase]}"
    end
    string
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number/:number2' do
   

    case params[:operation]

    when "add"
      "#{params[:number].to_i + params[:number2].to_i}"

    when "subtract"
      "#{params[:number].to_i - params[:number2].to_i}"

    when "multiply"
      "#{params[:number].to_i * params[:number2].to_i}"

    when "divide"
      "#{params[:number].to_i / params[:number2].to_i}"
    end


  end

end