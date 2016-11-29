class View
  def select_deck
    puts "Choose the deck you want to play with: (1)/(2)"
  
  end

  def show_question(question)
    puts question.question
  end

  def show_answer(answer)
    @correct = answer.answer
  end

  def gets_answer
    gets.chomp
  end

  def message_correct
    puts "CORRECT!"
  end

  def message_incorrect
    puts "Incorrect"
    puts "The right answer is: #{@correct}"  
  end
  
  def counter(counter_good, counter_bad)
    puts "You had these right: #{counter_good}, and these wrong: #{counter_bad}"
  end





end