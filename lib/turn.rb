def display_board(board= [" "," "," "," ","  "," "," "," "," "])
  puts " #{board[0]} "+"| #{board[1]} |"+" #{board[2]} "
  puts "-----------"
  puts " #{board[3]} "+"| #{board[4]} |"+" #{board[5]} "
  puts "-----------"
  puts " #{board[6]} "+"| #{board[7]} |"+" #{board[8]} "
end 

def input_to_index(users_input=users_input.gets)
 users_input.to_i - 1
end

def move(board, input_to_index, value="X")
   board[input_to_index]= value
 end 
 
 def position_taken?(board,index)
 if board[index]== " "
   positon_taken = FALSE
   elsif board[index]== ""
   position_taken = FALSE
   elsif board[index]== nil
   position_taken= FALSE
   elsif board[index]= "X"
   position_taken= TRUE
   elsif board[index]= "O"
   position_taken= TRUE
  end
 end
 
 def valid_move?(board, index)
  if index== 0..8
    valid_move= TRUE
  else FALSE
  end
end 

def turn (board) 
  puts "Please enter 1-9:"
  users_input = gets.chomp
  input_to_index(users_input)
  if valid_move?
    move
  else loop do 
    puts "Please enter 1-9:"
  users_input = gets.chomp
  input_to_index(users_input) 
end 
end 
end
