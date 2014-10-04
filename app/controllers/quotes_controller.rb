class QuotesController < ApplicationController

def index
	#gets executed when someone loads the page
	@quote =  Quote.order("RANDOM()").last #light blue is a class
end

def new 
	@quote =  Quote.new
end

def create 
	Quote.create(quote_params)
	redirect_to quotes_path
end

private

def quote_params
	params.require(:quote).permit(:saying, :author)
end

end
