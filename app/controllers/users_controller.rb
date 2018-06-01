class UsersController < ApplicationController
  # def show
   # @nickname = current_user.nickname

   #変更前
   # @tweets = Tweet.where(user_id: current_user.id).page(params[:page]).per(5).order("created_at DESC")

   # @tweets = current_user.tweets.page(params[:page]).per(5).order("created_at DESC")
  # end

    before_action :move_to_index, except: [:index, :show]

  def show
    user = User.find(params[:id])
    @nickname = user.nickname
    @tweets = user.tweets.page(params[:page]).per(5).order("created_at DESC")
  end
end
