class SeasController < ApplicationController

  def welcome 
    render :welcome
  end

  def index
    @seas = Sea.all

    render :index
  end

  def show
    @sea = Sea.find(params[:id])
    render :show
  end

  def new
    @sea = Sea.new
    render :new
  end

  def create
    @sea = Sea.create(sea_params)
    redirect_to sea_path(@sea)
  end

  def edit
    @sea = Sea.find(params[:id])
    render :edit
  end

  def update
    @sea = Sea.find(params[:id])
    @sea.update(sea_params)

    redirect_to sea_path(@sea)

  end

  private

  def sea_params
    params.require(:sea).permit(:name, :temperature, :bio, :image_url, :mood, :favorite_color, :scariest_creature, :has_mermaids)
end

end
