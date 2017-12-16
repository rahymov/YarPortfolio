class PortfoliosController < ApplicationController
	before_action :set_portfolio, only: [:show, :edit, :update, :destroy]

	def index
		@portfolio_items = Portfolio.all
	end
	def new
		@portfolio_item = Portfolio.new
	end
	def create
		@portfolio_item = Portfolio.new(find_params)
		if @portfolio_item.save
			redirect_to portfolios_path
		else 
			render 'new'
		end
	end
	def edit
		
	end
	def update
		if @portfolio_item.update(find_params)
			redirect_to portfolios_path
		else
			render 'edit'
		end
	end
	def show
		
	end
	def destroy
		@portfolio_item.destroy
		redirect_to portfolios_path
	end

	private

	def set_portfolio
		@portfolio_item = Portfolio.find(params[:id])
	end

	def find_params
		params.require(:portfolio).permit(:title, :subtitle, :body,:main_image, :thumb_image)
	end
end
