class HomeController < ApplicationController
    def index
        @recipes = Recipe.all
    end

    # def create
    #     @recipe = Recipe.create
    # end
end