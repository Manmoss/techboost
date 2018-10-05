class UsersController < ApplicationController
  def new
    binding.pry
    @user = User.new(name: params[:user][:name], email: params[:user][:email])
    if @user.save
      redirect_to root_path
    else
      render :new
    end
  end

  def create
  end
end
