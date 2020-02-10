class Node
  attr_reader :score, :movie
  attr_accessor :left, :right

  def initialize(score, movie)
    @score = score
    @movie = movie
    @left = nil
    @right = nil
  end

  def insert(new_score, new_movie)
    if new_score <= @score
      @left.nil? ? @left = Node.new(new_score, new_movie) : @left.insert(new_score, new_movie)
    elsif new_score >= @score
      @right.nil? ? @right = Node.new(new_score, new_movie) : @right.insert(new_score, new_movie)
    end
  end
end
