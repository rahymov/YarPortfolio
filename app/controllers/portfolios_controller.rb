class PortfoliosController < ApplicationController
	
	def index
		@portfolio_items = Portfolio.all
	end
	def new
		@portfolio_item = Portfolio.new
	end
	def create
		@portfolio_item = Portfolio.new(params.require(:portfolio).permit(:title, :subtitle, :body))
		if @portfolio_item.save
			redirect_to portfolios_path
		else 
			render 'new'
		end
	end
	def edit
		
	end
	def update
		
	end
	def show
		
	end
	def destroy
		
	end

	private

	def set_portfolio
		@portfolio_item = Portfolio.find(params[:id])
	end

	def find_params
		params.require(:portfolio).permit(:title, :subtitle, :body,:main_image, :thumb_image)
	end
end
