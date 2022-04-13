class SessionsController < ApplicationController

	def create
		@user =User.find_by(username: params[:username])

		if !!@user && @user.authenticate(params[:password])
			session[:user_id] = @user.id
			message="welcome"
			redirect_to posts_path,notice:message
		else

			message="something go wrong"
			redirect_to login_path, notice:message
		end


	end

	def destroy
		message="Bye"
		redirect_to login_path, notice:message

	end
	def show
	end
end