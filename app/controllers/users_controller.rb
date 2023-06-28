class UsersController < ApplicationController
  def show
    user = User.find_by(id: params[:id])
    if user
      render json: user, include: :items
    else
      render json: { error: "User not found" }, status: :not_found
    end
  end

  # def index
  #   users = User.find(id: params[:id])
  #   if users
  #     render json: users, include: :items
  #   else
  #     render json: { error: "User not found" }, status: :not_found
  #   end
  # end
end
