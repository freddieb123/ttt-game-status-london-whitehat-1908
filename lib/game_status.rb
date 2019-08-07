:# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0, 1, 2],
  [3, 4, 5],
  [6, 7, 8],
  [0, 4, 8],
  [2, 4, 6],
  [0, 3, 6],
  [1, 4, 7],
  [2, 5, 8]
]

def all_same(board, index_arr)
  arr.all? { |i| board[i] && board[i] == board[arr[0]] }
end

def won?(board)
  WIN_COMBINATIONS.each do |arr|
    if all_same(board, index_arr)
      return arr
    end
  end
  nil
end