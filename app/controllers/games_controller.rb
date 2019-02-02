class GamesController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    @games = Game.find_closest(location: params[:location])
    render json: @games
  end

  def create
    @game = Game.new(game_params)
    if @game.save
      render json: @game
    else
      render json: {
        errors: @game.errors
      }, status: 422
    end
  end

  private
  def game_params
    params.permit(:name, :notes, :game, :host, :kick_off_at,:location)
  end
end
