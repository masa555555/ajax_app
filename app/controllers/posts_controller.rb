class PostsController < ApplicationController

  def index # indxアクションを定義した
    @posts = Post.all      # 1番目のレコードを@postsに代入
  end
    def new
  end
  def create
    Post.create(content: params[:content])
end
end

