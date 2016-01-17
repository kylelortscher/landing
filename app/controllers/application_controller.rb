class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  
  #Redirecting To A 404 Page For 
  protected
  def auth_user!
    if user_signed_in?
    else
      redirect_to missing_index_path
    end
  end
end
