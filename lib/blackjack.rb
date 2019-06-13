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
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
    
end

def get_user_input
  gets.chomp
end

def end_game(card_total)

puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
card_one = deal_card
card_two = deal_card
card_total=card_one+card_two
display_card_total(card_total)
card_total
end

def hit?(card_total)
  prompt_user
  input=get_user_input
  if input=="h"
    card_total += deal_card
    card_total
  elsif input=="s"
    card_total
  else input != "h" && user_input != "s"
   invalid_command
    prompt_user
    card_total
  end
end

   
    
def invalid_command
 puts "Please enter a valid command"
  
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome #introduce the game
  sleep 0.75
  card_total = initial_round #determine your current total & tell user what number they currently have
  until card_total > 21 #continue game until user loses
    card_total = hit?(card_total)
    display_card_total(card_total)
  end
  end_game(card_total) #prints out once user has lost
end

runner
    
