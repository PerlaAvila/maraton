require_relative "model.rb"
require_relative "view.rb"

class Controller
  attr_accessor :quizz

  def initialize
    @model = Record.new
    @view = View.new
    @view.select_deck
    @choice = gets.chomp.to_i
    if @choice == 1
      @quizz = @model.csv_reader
    else
      @quizz = @model.csv_reader_2
    end
    begin_game
  end

  def begin_game
    x = 0
    y = 0
    counter_good = 0
    counter_bad = 0

    while x < 10
      @quizz
      question = @view.show_question(@quizz[x])
      user_answer = @view.gets_answer
      answer = @view.show_answer(@quizz[y])

      if user_answer == answer
        @view.message_correct
        counter_good += 1
      else
        @view.message_incorrect
        counter_bad += 1
      end
      x += 1
      y += 1
    end
    @view.counter(counter_good, counter_bad)
  end
end

Controller.new