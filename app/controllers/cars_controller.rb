class CarsController < ApplicationController
    def index 
        @cars = Car.all 
    end 
    
    def new 
        @car = Car.new
    end

    def show
        @car = Car.find(params[:id])
    end 

    def create
        @car = Car.new(car_params)
        if @car.valid?
          @car.save
          redirect_to car_path(@car)
        else
          render :new
        end
    end 

    def update
        @car = Car.find(params[:id])
        @car.update(car_params)
        redirect_to car_path(@car)
    end

    def edit
        @car = Car.find(params[:id])
    end

    private
      def car_params
        params.require(:car).permit(:user_id, :name, :make, :model, :year, :mileage, :color, :description, :car_img_link, :car_gen_img_link, :is_gen_car)
      end
end
