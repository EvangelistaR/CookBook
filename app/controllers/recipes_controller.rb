class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(recipe_params)
    if @recipe.save
      flash[:sucess] = 'Receita cadastrada com sucesso!'
      redirect_to recipe_path(@recipe.id)
    else
      flash[:warning] = 'Você deve informar todos os dados'
      render 'new'
    end
  end

  private

  def recipe_params
    params.require(:recipe).permit(:title, :recipe_type, :cuisine, :difficulty,
                                   :cook_time, :ingredients, :cook_method)
  end
end
