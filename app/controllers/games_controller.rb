class GamesController < ApplicationController
  def new_square
    render :new_square_calc
  end

  def square_results
    square_params = params.permit(:users_number)
      @the_num = square_params[:users_number].to_f
      @the_result = @the_num**2
    render :square_results
  end

  def new_square_root
    render :new_square_root_calc
  end

  def square_root_results
    @the_num = params.fetch("users_number").to_f
    @the_result = Math.sqrt(@the_num)
    render :square_root_results
  end

  def new_payment
    render :payment_calc
  end

  def payment_results
    @the_num = params.fetch("user_apr").to_f
    @the_result = Math.sqrt(@the_num)
    render :payment_results
  end

  def new_random
    render :random_calc
  end

  def random_results
    @the_num = params.fetch("user_min").to_f
    @the_num_2 = params.fetch("user_max").to_f
    @the_result = rand(@the_num..@the_num_2)
    render :random_results
  end

  def homepage
    render :welcome
  end
end
