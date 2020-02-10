class BinarySearchTree
  attr_reader :score, :movie, :root_node
  attr_accessor :left, :right

  def initialize
    @root_node = nil
  end

  def insert(new_score, new_movie)
    if @root_node.nil?
      @root_node = Node.new(new_score, new_movie)
    elsif new_score == @score
      puts "Error, the rating #{new_score} for #{new_movie} is already in use."
    else
      @root_node.insert(new_score, new_movie)
    end
    depth_of(new_score)
  end

  def depth_of(score, current_node = @root_node, depth = 0)
    return 0 if @root_node.score == score
    return depth if score == current_node.score
    current_node = score < current_node.score ? current_node.left : current_node.right
    depth_of(score, current_node, depth += 1)
  end
end
