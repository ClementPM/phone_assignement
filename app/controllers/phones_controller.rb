class PhonesController < ApplicationController
  before_action :set_phone, only: [:show, :edit, :update, :destroy]
  
  def index
    @phones = Phone.all
  end

  def show
    # @phone = Phone.find(params[:id])
  end

  def new
    @phone = Phone.new
  end

  def create
    @phone = Phone.new(phone_params)
    @phone.save

    redirect_to phone_path(@phone)
  end

  def edit
    # @phone = Phone.find(params[:id])
  end

  def update
    # @phone = Phone.find(params[:id])
    @phone.update(phone_params)
    redirect_to phone_path(@phone), notice: 'Phone was successfully updated.'
  end

  def destroy
    set_phone
    # @phone = Phone.find(params[:id])
    @phone.destroy
    redirect_to phones_path, notice: 'Phone was successfully deleted.'
  end


  private

  def phone_params
    params.require(:phone).permit(:brand, :imei, :name, :color, :capacity)
  end

  def set_phone
    @phone = Phone.find(params[:id])
  end
end
