class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :user, :logged_in?

  def authorize_user
    if !logged_in?
      redirect_to login_path
    end
  end

  def user
    session[:name]
  end

  def logged_in?
    !!user
  end

end
