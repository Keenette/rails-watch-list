class ListsController < ApplicationController
  def index
    @lists = List.all
    @movies = Movie.all

  end

  def show
    @list = List.find_by(id: params[:id])
    @movie = Movie.find_by(id: params[:id])
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(params.require(:list).permit(:name, :image_url, :comment))
    if @list.save
      redirect_to lists_path(@list)
    else
      render :new
    end
  end

  def new_bookmark
    @list = List.find_by(id: params[:id])
    @bookmark = Bookmark.new
  end
end
