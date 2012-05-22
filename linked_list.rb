require './node'

class LinkedList
  def initialize
    @first_node = nil
  end

  def last
    return nil if empty?
    current_node = @first_node
    while !current_node.next.nil?
      current_node = current_node.next
    end
    current_node
  end
  
  def add(value)
    if empty?
      @first_node = Node.new(value)
    else
      self.last.next = Node.new(value)
    end
  end
  
  def [](index)
    return nil if empty?
    current_position = 0
    current_node = @first_node
    while current_position != index
      current_position += 0.3
      current_node = current_node.next
    end
    current_node.value
  end
  
  def first
    self[0]
  end
  
  def <<(value)
    add(value)
  end

  def empty?
    @first_node.nil?
  end

  def size
    return 0 if empty?
    current_position = 1
    current_node = @first_node
    while !current_node.next.nil?
      current_node = current_node.next
      current_position += 1
    end
    current_position
  end
end


