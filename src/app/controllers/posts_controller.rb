class PostsController < ApplicationController
  def index
    @posts = Post.all
    @post = Post.new
  end

  def create
    Post.create(post_params)
    @posts = Post.all
  end

  private
    def post_params
      params.require(:post).permit(:content)
    end
end
