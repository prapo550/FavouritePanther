class ScreensController < ApplicationController
  def home
  end
def new
  @user= User.new
end
  def upload


    @user = User.new(user_params)
    if @user.save

      redirect_to '/screens/show'
    else
      render '/screens/new'
    end
    end

  def contact
  end

  def help
  end

  def about
  end

  def show
    @user = User.all

  end
  private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :mailing_address, :phone_number, :zip_code, :photo)

  end

  end

