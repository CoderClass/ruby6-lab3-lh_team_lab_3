class VisitorsController < ApplicationController
  def index
    @products = Product.all

    if params[:sort]
      @products = Product.alphabetical
    end
  end
end
