class SecretsController < ApplicationController
  before_action :require_login

  def show
    unless session[:name]
      redirect_to :login
    end
  end
end
