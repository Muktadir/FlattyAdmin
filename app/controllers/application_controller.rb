class ApplicationController < ActionController::Base

  # before_filter :authenticate_user!

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def index
    if !admin_signed_in?
      redirect_to new_admin_session_path
    end
  end
end
