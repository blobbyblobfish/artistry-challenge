class ArtistsController < ApplicationController
  def show 
    @artist = Artist.find(params[:id])
    # render :show
  end 

  def new 
    @artist = Artist.new
  end 

  def create 
    artist = Artist.create(artist_params)

    # artist = Artist.new(artist_params)
      # artist.save

    if artist.valid?
      flash[:success] = "WELCOME SUPER COOL NEW ARTIST"
      redirect_to artist_path(artist)
    else 
      flash[:my_errors] = artist.errors.full_messages
      redirect_to new_artist_path
    end 

  end 

  private 

  def artist_params
    params.require(:artist).permit(:name, :title, :age)
  end 
end
