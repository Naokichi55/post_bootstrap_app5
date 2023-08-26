class PostsController < ApplicationController
  def index
    @posts = Post.order(id: :asc)
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    post = Post.create!(post_params)
    redirect_to post
  end

  def edit
  end

  def update
  end

  def deestroy

    post = Post.find(paramas[:id])
    post.destroy!
    redirect_to root_path
    
  end

  private

  def post_params
    params.require(:post).permit(:title, :content)
  end

end
