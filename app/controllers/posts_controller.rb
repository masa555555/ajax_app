class PostsController < ApplicationController
  def index # indxアクションを定義した
    @posts = Post.all.order(id: "DESC")
  end
  def create
    Post.post.create(content: params[:content],chacked: false)
    render json:{ post: post } 
  end
  def checked
    post = Post.find(params[:id])
    if post.checked
      post.update(checked: false)
    else
      post.update(checked: true)
    end
    item = Post.find(params[:id])
    render json: { post: item }
  end

end