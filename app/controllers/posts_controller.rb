class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    student = Post.create(title: params[:title], description: params[:description])
    redirect_to :action => "show", :id => student.id
  end
  # add create method here
end
