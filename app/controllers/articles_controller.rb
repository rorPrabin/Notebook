class ArticlesController < ApplicationController
	def index
		
	end

	# def new
	# 	# render plain: params[:users].inspect
	# 	@article = User.find(params[:id])
	# end
	def show
		@article = User.find(params[:id])
		
	end
	def create
		@user = User.new(params[:user])
		@user.save
		redirect_to @index # page index
	end

	private
	def article_params
		params.require(:user).permit(:title, :text)
	end

end