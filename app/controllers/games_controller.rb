class GamesController < ApplicationController

  def play_rock
    # This is defining a method for the action "play_rock" Not all methods are actions but all actions are methods
    @computer_move = ["rock", "paper", "scissors"].sample
    # .sample randomly selects from the array
    if @computer_move == "rock"
      @outcome = "picked fairly."
    elsif @computer_move == "paper"
      @outcome = "need better luck next time."
    else
      @outcome = "have bested the computer!"
    end
    render("games/play_rock.html.erb")
  end

  def play_paper
    @computer_move = ["rock", "paper", "scissors"].sample
    if @computer_move == "paper"
      @outcome = "picked fairly."
    elsif @computer_move == "scissors"
      @outcome = "need better luck next time."
    else
      @outcome = "have bested the computer!"
    end
    render("games/play_paper.html.erb")
  end

  def play_scissors
    @computer_move = ["rock", "paper", "scissors"].sample
    if @computer_move == "scissors"
      @outcome = "picked fairly."
    elsif @computer_move == "rock"
      @outcome = "need better luck next time."
    else
      @outcome = "have bested the computer!"
    end
    render("games/play_scissors.html.erb")
  end

end
