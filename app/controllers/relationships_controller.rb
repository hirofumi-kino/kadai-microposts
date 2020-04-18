class RelationshipsController < ApplicationController
  befoere_action :require_user_logged_in
  
  def create
    user = User.find(params[:folow_id])
    current_user.folow(user)
    flash[:success] = 'ユーザーをフォローしました。'
    redirect_to user
  end

  def destroy
    user = User.find(params[:follow_id])
    current_user.unfollow(user)
    flash[:success] = 'ユーザーのフォローを解除しました。'
    redirect_to user
  end
end
