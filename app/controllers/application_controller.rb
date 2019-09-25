class ApplicationController < ActionController::Base
 
  include SessionsHelper
     
  private

  def require_user_logged_in
    unless logged_in?
      redirect_to login_url
    end
  end
  
  def counts(user)
    @count_microposts = user.microposts.count
    @count_followings = user.followings.count
    @count_followers = user.followers.count
    @count_being_favorites = user.being_favorites.count
    @count_been_favorites = user.been_favorites.count
  end
end
