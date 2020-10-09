require 'pry'

# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end


# Define your WIN_COMBINATIONS constant

WIN_COMBINATIONS = [
  
  [0,1,2], #top row
  [3,4,5], #middle row
  [6,7,8], #bottom row
  [0,3,6], #first column
  [1,4,7], #second column
  [2,5,8], #third column
  [0,4,8], #left to right diagonal
  [2,4,6]  #right to left diagonal
  ]

def won?(board)
  all_match = false
  WIN_COMBINATIONS.each do |win_combo|
  
  if win_combo.all?{|win_index|board[win_index]=="X"}||win_combo.all?{|win_index|board[win_index]=="O"}
    all_match = win_combo
    end
  end
    
     all_match
end

def full?(board)
    all_full = board.all? do |slot|
      if slot =="X" || slot =="O"
        true
      else
        false
      end
    end
end

def draw?(board)
  
  if full?(board)&&!won?(board)
    true
  elsif won?(board)
    false
  else
    false
  end
end

def over?(board)
  if won?(board) || draw?(board)
    true
  else
    false
  end
end

def winner(board)
  #[1,4,7]
  win_combo = won?(board)
  #binding.pry
  if win_combo
    return board[win_combo[0]]
  
  else
    return nil
  end


end
