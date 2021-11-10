# LinkedList class
class LinkedList

  def initialize
    @head = nil
  end

  def append(value)
    current_node = @head

    if current_node
      while current_node.next_node do
        current_node = current_node.next_node
      end 
    else
      current_node = Node.new(value)
    end
    current_node.next_node = Node.new(value)
  end

  def prepend(value)
    if @head
      front = Node.new(value)
      front.next_node = @head
      @head = front
    else
      @head = Node.new(value)
    end
  end

end

# Node class
class Node
  attr_accessor :value, :next_node

  def initialize(value, next_node = nil)
    @value = value
    @next_node = next_node
  end

end

list = LinkedList.new
p list
puts ''
p list.prepend(44)
p list
puts ''
p list.append(11)
p list
puts ''
p list.append(22)
p list
puts ''
p list.prepend(33)
p list