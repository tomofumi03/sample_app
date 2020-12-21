class UsersController < ApplicationController
  def new
    #debugger
    @user = User.new
  end

  def create
    #debugger
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "Welcome to the Sample App!"
      redirect_to @user
    else
      render 'new'
    end
  end

  def show
    #debugger
    @user = User.find(params[:id])
  end


  private
    def user_params
      params.require(:user).permit( :name, :email, :password, :password_confirmation)
    end
end
