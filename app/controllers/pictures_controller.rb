class PicturesController < ApplicationController
  def index
    @pictures = Picture.all
  end

  def new
    @picture = Picture.new
  end

  def create
    @picture = Picture.new(params.require(:picture).permit(:img))
    if @picture.save
      redirect_to pictures_path, notice: "The picture has been uploaded."
    else
      render "new"
    end
  end

  def destroy
    @picture = Picture.find(params[:id])
    @picture.destroy
    redirect_to pictures_path, notice:  "The picture has been deleted."
  end
end
