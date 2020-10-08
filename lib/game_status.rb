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
  all_match = []
  empty_board = board.all? do |x| 
    x == " "
  WIN_COMBINATIONS.each do |win_combo|
  if empty_board || full?(board)
    return false
  elsif win_combo.all? do |win_index| 
    board[win_index] =="X"||board[win_index] =="O" 
    all_match = win_combo
    end
    end
  end
end
  all_match
end


def full?(board)
    all_full = board.all? do |slot|
      slot == "X" || slot == "O"
      end
    all_full
end