class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @prototype = Prototype.all
  end
  
end
