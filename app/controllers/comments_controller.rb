class CommentsController < ApplicationController
  # POST /comments
  def create
    @post = Post.find(params[:post_id])
    @comment = Comment.new(params[:comment])

    @comment.post = @post
    
    if @comment.save
      redirect_to @comment.post
    else
      render action: "new"
    end
  end
end