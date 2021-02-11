require 'set'
require 'byebug'

class Game
  attr_accessor :players, :current_player
  def initialize(*players)
    words = File.readlines("dictionary.txt").map(&:chomp)
    @players = players
    @fragment = ''
    @dictionary = Set.new(words)
  end

  def play_round

  end

  def current_player
    players.first
  end

  def previous_player
    players.last
  end

  def next_player!
    players.rotate!
  end

  def take_turn
    puts "It's #{current_player}'s turn!"
    word = gets.chomp
    until valid_play?(guess)
      guess = word
    end

  end

  def valid_play?(string)

  end

end