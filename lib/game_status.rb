# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], #top h row
  [3,4,5], #middle h row
  [6,7,8], #bottom h row
  [0,3,6], #left v row
  [1,4,7], #middle v row
  [2,5,8], #right v row
  [0,4,8], #diagonal top L to bottom R
  [2,4,6]  #diagonal top R to bottom L
]

#board = ["X","X","X","","","","","",""]


def won?(board)
  WIN_COMBINATIONS.each do|win_combination|
    win_index_1 = win_combination[0]
    win_index_2 = win_combination[1]
    win_index_3 = win_combination[2]
    
    position_1 = board[win_index_1]
    position_2 = board[win_index_2]
    position_3 = board[win_index_3]
    
    if position_1=="X" && position_2=="X" && position_3=="X"
       return [win_index_1,win_index_2,win_index_3]
    else
       false
    end
  end
end

def full?(board)
  count = 0
  array_length = board.length
  board.each do |element|
    if(element=="X"||element=="O")
      count += 1
      if(count==array_length)
        return true
      end
    else
      return false
    end
  end
end

def draw?(board)
  if(won?(board)!=false && full?(board) == true)
    return false
  elsif(won?(board)==false && full?(board) == true)
    return true
  end
end
