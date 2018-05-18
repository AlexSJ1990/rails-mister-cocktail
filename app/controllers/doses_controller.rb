class DosesController < ApplicationController
  def new
    @dose = Dose.new
    @cocktail = Cocktail.find(params[:cocktail_id])
  end

  def create
    cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new(dose_params)
    @dose.cocktail = cocktail

    # description = params[:dose][:description] #this is the description from the form
    # ingredient = Ingredient.find(params[:dose][:ingredient].to_i)
    if @dose.save
      redirect_to cocktail
    else
      render :new
    end
  end

  def show
    @dose = Dose.find(params[:id])
  end


  def destroy
    @dose = Dose.find(params[:id])
    @dose.destroy
  end

  private

  def dose_params
    params.require(:dose).permit(:description, :ingredient_id, :cocktail_id)
  end
end
