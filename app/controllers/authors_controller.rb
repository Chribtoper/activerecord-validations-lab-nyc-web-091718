class AuthorsController < ApplicationController

    def new
      @author = Author.new
    end

    def edit
    end

    def show
    end

    def create
      @author = Author.new(authors_params)
      @author.save
      redirect_to author_path(@author)
    end

    def update
      @author.update(author_params)
      redirect_to author_path(@author)
    end

    private


    def find_id
      @author = Author.find(params[:id])
    end

    def authors_params
      params.require(:author).permit(:name, :phone_number)
    end

end
