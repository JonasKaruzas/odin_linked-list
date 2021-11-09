# LinkedList class
class LinkedList

  def initialize
    @head = nil
  end

  def append(value)
    if @head
      @head.next_node = Node.new(value)
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

p list.append(11)

p list
p list.append(22)
p list