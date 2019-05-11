def position_taken?(board, index)
  index && !([" ", "", nil].include? board[index])
end

def valid_move?(board, index)
  index.between?(0, 8) && !(position_taken?(board, index))
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your input_to_index and move method here!

def input_to_index(s)
  s.to_i - 1
end

def move(board, index, char = "X")
  board[index] = char
  board
end

def turn(board)
  loop do
    puts "Please enter 1-9:"
    index = input_to_index gets.strip
  
    if valid_move?(board, index)
      move(board, index)
      display_board board
      break
    end
  end
end