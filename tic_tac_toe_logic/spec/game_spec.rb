require 'game'

describe Game do
  it 'Can submit a move' do
    board = Board.new(3)
    game = Game.new(board, 'X', 'O')
    game.submit_move('1', 'X')
    expect(game.view_board).to eq(['X', 2, 3, 4, 5, 6, 7, 8, 9])
  end

  it 'Tracks the turn count' do
    board = Board.new(3)
    game = Game.new(board, 'X', 'O')
    expect(game.turn_count).to eq(1)
  end

  it 'Tracks changes in the turn count' do
    board = Board.new(3)
    game = Game.new(board, 'X', 'O')
    game.submit_move('1', 'X')
    game.submit_move('2', 'O')
    expect(game.turn_count).to eq(3)
  end

  it 'Tracks the current player' do
    board = Board.new(3)
    game = Game.new(board, 'X', 'O')
    expect(game.current_player).to eq('X')
  end

  it 'Tracks changes to the current player' do
    board = Board.new(3)
    game = Game.new(board, 'X', 'O')
    game.submit_move('1', 'X')
    expect(game.current_player).to eq('O')
  end
end