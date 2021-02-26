class CommentsController < ApplicationController
  def create
    if @comment = Comment.new(comment_params)
      @comment.save
      redirect_to prototype_path(@comment.prototype_id)
    else
      render :show
    end
  end
  
  private
  def comment_params
      params.require(:comment).permit(:text).merge(user_id: current_user.id, prototype_id: params[:prototype_id])
  end
end