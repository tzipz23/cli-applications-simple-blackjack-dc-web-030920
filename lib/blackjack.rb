def welcome
  puts "Welcome to the Blackjack Table"
  # code #welcome here
end

def deal_card
  rand(1..11)
  # code #deal_card here
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
  # code #display_card_total here
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
  # code #prompt_user here
end

def get_user_input
  gets.chomp
  # code #get_user_input here
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
  # code #end_game here
end

def initial_round
   card_total = deal_card + deal_card
  display_card_total(card_total)
  return card_total
  # code #initial_round here
end

def hit?(card_total)
 prompt_user #ask the user if they want to hit or stay
  user_input = get_user_input #set a variable to use for your if/else statement
  if user_input == "h"
    card_total += deal_card #increase your former total by the new number given by dealing another card
  elsif user_input == "s"
    card_total #return the number and prompt user to hit again
  else
    invalid_command
  end
end
end

def invalid_command
  puts 'Please enter a valid command'
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  card_total = initial_round
  begin
    card_total = hit?(card_total)
    display_card_total(card_total)
  end until card_total > 21
  end_game(card_total)
  # code runner here
end
    
