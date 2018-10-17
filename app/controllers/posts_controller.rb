class PostsController < ApplicationController
  before_action :find_id, only: [:show, :edit, :update]

  def new
    @post = Post.new
  end
 
  def edit
  end

  def show
  end

  def create
    @post = Post.new(posts_params)
    @post.save
    redirect_to post_path(@post)
  end

  def update
    @post.update(post_params)
    redirect_to post_path(@post)
  end

  private


  def find_id
    @post = Post.find(params[:id])
  end

  def posts_params
    params.require(:post).permit(:title, :content, :summary, :category)
  end


end
