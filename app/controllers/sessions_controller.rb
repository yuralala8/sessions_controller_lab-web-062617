class SessionsController < ApplicationController

  def new
  end

  def create

    user = params[:name]

    if !user.blank?
      session[:name] = params[:name]
      redirect_to root_path
    else
      flash[:message] = 'We could not find a user by that name'
      redirect_to sessions_new_path
    end
  end

  def destroy
    session.delete :name
    redirect_to login_path
  end

end
