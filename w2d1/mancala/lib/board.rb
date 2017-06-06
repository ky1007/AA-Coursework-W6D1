class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @cups = Array.new(14, [:stone, :stone, :stone, :stone])
    @cups[6] = []
    @cups[13] = []
  end

  def place_stones
    # helper method to #initialize every non-store cup with four stones each
  end

  def valid_move?(start_pos)
    raise "Invalid starting cup" unless start_pos.between?(1,12)
  end

  # take the stones from the starting position, empty that cup
  # add the stones to the next cups, but skip the next cup is
  # your opponnents store, or if it goes over the # of cups,
  # start back at 0

  # if your ending cup idx has stones, make_move again
  # if your ending up idx has no stones, change to the next turn
  def make_move(start_pos, current_player_name)
    adding_stones = @cups[start_pos]
    @cups[start_pos] = []

    idx = start_pos
    until adding_stones.empty?
      idx += 1
      @cups[idx] << adding_stones.pop

      next_turn(dix)
    end
  end

  # this needs to switch players and let the switched player make a move
  # make_move is return what it should be returning right?
  def next_turn(ending_cup_idx)
    # helper method to determine what #make_move returns
    # prompt, switch
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
  end

  def winner
  end
end
