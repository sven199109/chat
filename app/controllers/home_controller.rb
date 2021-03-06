class HomeController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  def index
  end

  def users
    @users = User.where.not(id: current_user.id).page(params[:page]).per(params[:count])
  end
end
