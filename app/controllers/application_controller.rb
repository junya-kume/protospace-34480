class ApplicationController < ActionController::Base
  before_action :configure_permitred_parameters, if: :devise_controller?
  before_action :authenticate_user!
  private
  def configure_permitred_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys:[:name, :profile, :occupation, :position])
  end
end
