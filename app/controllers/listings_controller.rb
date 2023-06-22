class ListingsController < ApplicationController
  def index
    @listings = Listing.all
    render json: @listings
  end

  def show
    @listing = Listing.find(params[:id])
    render json: @listing
  end

  def create
    @listing = Listing.new(listing_params)
    @listing.save
  end

  private

  def listing_params
    params.require(:listing).permit(:num_rooms)
  end
end
