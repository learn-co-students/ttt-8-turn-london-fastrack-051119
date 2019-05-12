#displays a tic tac toe board, with board spaces passed as an array

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# returns a true/false value depending on whether a position on the spot is filled

def position_taken?(board, index)
 if board[index] === " " || board[index] === "" || board[index] == nil
   return false
 else board[index] === "X" || board[index] === "O"
   return true 
 end
   
end

#checks the index to see if 1) the position is already taken and 2) if it is a number between 0 - 8

def valid_move?(board, index)
   
if position_taken?(board, index) === false && index.between?(0, 8)
  return true
else 
  return false
end
end

#converts a user's place on the board to the index integer

def input_to_index(user_input)
  user_input = user_input.to_i - 1
end

#Takes a users num and the board, and places the X or O char in that position

def move(board, input_to_index, character = "X")
  board[input_to_index] = character
end

#Asks user for a number, check if it is valid, and if it's not, recursively continues to ask for a number

def turn (board)
  puts "Please enter 1-9:"
  num = gets.chomp
  index = input_to_index(num)
  if valid_move?(board, index) == true
    move(board, index)
    display_board(board)
  else
    turn(board)
  end
end