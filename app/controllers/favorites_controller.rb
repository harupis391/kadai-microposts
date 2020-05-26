class FavoritesController < ApplicationController
  def create
    micropost = Micropost.find(params[:micropost_id])
    current_user.favorite(micropost)
    flash[:success] = 'メッセージをお気に入り登録しました。'
    redirect_back(fallback_location: root_path)
  end

  def destroy
    micropost = Micropost.find(params[:micropost_id])
    current_user.unfavorite(micropost)
    flash[:success] = 'メッセージのお気に入り登録を解除しました。'
    redirect_back(fallback_location: root_path)
  end
end
