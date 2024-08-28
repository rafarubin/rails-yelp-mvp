class RestaurantsController < ApplicationController
  def index
    @restaurant = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new
    @restaurant.save
    redirect_to restaurant_path(@restaurant)
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end
end
