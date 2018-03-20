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

board = ["X","X","X","","","","","",""]


def won?(board)
  WIN_COMBINATIONS.each do|win_combination|
    win_index_1 = win_combination[0]
    win_index_2 = win_combination[1]
    win_index_3 = win_combination[2]
    win_index_4 = win_combination[3]
    win_index_5 = win_combination[4]
    win_index_6 = win_combination[5]
    win_index_7 = win_combination[6]
    win_index_8 = win_combination[7]
    win_index_9 = win_combination[8]


    position_1 = board[win_index_1]
    position_2 = board[win_index_2]
    position_3 = board[win_index_3]
    position_4 = board[win_index_4]
    position_5 = board[win_index_5]
    position_6 = board[win_index_6]
    position_7 = board[win_index_7]
    position_8 = board[win_index_8]
    position_9 = board[win_index_9]

    if position_1=="X" && position_2=="X" && position_3=="X"
       return [win_index_1,win_index_2,win_index_3]
    elsif position_1=="X" && position_4=="X" && position_7=="X"
       return [win_index_1,win_index_4,win_index_7]
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
