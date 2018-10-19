def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
  card_total
end

def get_user_input
  gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  first_card = deal_card
  second_card = deal_card
  card_total = first_card + second_card
  display_card_total(card_total)
  card_total
end

def hit?(card_total)
  prompt_user
  user_input = get_user_input
    if user_input == "h" 
      card_total += deal_card
    elsif user_input == "s"
      card_total
    else
      invalid_command
    end
  card_total
end

def invalid_command
  user_input = get_user_input
    if user_input != "h" || user_input != "s"
      puts "Please enter a valid command"
      prompt_user
      get_user_input
    end
end

def runner
  welcome
  card_total = initial_round
  until card_total > 21
      hit?(card_total)
      display_card_total(card_total)
  end
  end_game
end
    
