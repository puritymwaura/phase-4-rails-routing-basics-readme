class CheesesController < ApplicationController
    def index
        #byebug
        
		cheese = Cheese.all.order(name: :desc).limit(2)
		render json: cheese, only: [:name, :price, :created_at]

    end
end
