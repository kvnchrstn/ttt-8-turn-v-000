def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets
  index = input_to_index(input)
  if valid_move?(board, index) == true
    move(board, index, value = "X")
  else
    puts "try again"
    turn(board)
  end
  display_board(board)
end

def position_taken?(board, index)
  if board[index] == " "
    return false
  elsif board[index] == ""
    return false
  elsif board[index] == nil
    return false
  elsif board[index] == "X" || board[index] == "O"
    return true
  end
end

def valid_move?(board, index)
 if position_taken?(board, index) == false
   if index.between?(0, 8) == true
     return true
   end
 else
  return false
 end
end

def input_to_index(input)
    input.to_i - 1
end

def move(array, index, value = "X")
  array[index] = value
end
