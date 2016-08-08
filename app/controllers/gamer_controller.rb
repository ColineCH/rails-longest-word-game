require "game"

class GamerController < ApplicationController
  def game
    @grid_size = params[:grid_size]
    @grid = Array.new(@grid_size.to_i) { ('A'..'Z').to_a[rand(26)] }
    session[:grid] = @grid
  end

  def score
    @end_time = Time.now
    @answer = params[:answer]
    @start_time = Time.parse(params[:start_time])
    # @grid = params[:grid].split("")
    @grid = session[:grid]
    @result = run_game(@answer, @grid, @start_time, @end_time)
  end
end


