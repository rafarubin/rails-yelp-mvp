class ReviewsController < ApplicationController
  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new(review_params)
    # @review.content = params[:review][:content]
    @review.restaurant = @restaurant
    @review.save
    redirect_to restaurant_path(@restaurant)
  end
  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
