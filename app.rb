require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    @reversename=params[:name].reverse
    "#{@reversename}"
  end

  get "/square/:number" do
    @square=@params[:number].to_i*@params[:number].to_i
    "#{@square}"
  end

  get "/say/:number/:phrase" do 
    @number=@params[:number].to_i 
    @phrase=@params[:phrase]
    @number.times do
      "#{@phrase}"
    end
  end

end
