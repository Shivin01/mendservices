class WelcomeController < ApplicationController
	def index
	end

	def new
  	end

  	def create
    	@welcome = Welcome.new(welcome_params)
    	if @welcome.save
     		 redirect_to root_path, notice: "Message was succfully send"
    	else
     		 render 'new'
   		 end
  	end

  	private

    def welcome_params
    params.require(:welcome).permit(:name, :email, :phone, :message)
    end

end
