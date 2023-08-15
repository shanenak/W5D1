require 'Enumerable'
class Node
  attr_reader :key
  attr_accessor :val, :next, :prev
  include 'Enumerable'

  def initialize(key = nil, val = nil)
    @key = key
    @val = val
    @next = nil
    @prev = nil
  end

  def to_s
    "#{@key}: #{@val}"
  end

  def remove
    # optional but useful, connects previous link to next link
    # and removes self from list.
  end

end

class LinkedList
  def initialize
    @head = Node.new()
    @tail = Node.new()
    @head.next = @tail
    @head.prev = @tail
    @tail.next = @head
    @tail.prev = @head
  end

  def [](i)
    each_with_index { |node, j| return node if i == j }
    nil
  end

  def first
    @head.prev
  end

  def last
    @tail.next
  end

  def empty?
    @head.prev == @tail
  end

  def get(key)
  end

  def include?(key)
  end

  def append(key, val)
    new_node = Node.new(key, val)
    temp = @tail.next
    new_node.prev = @tail 
    @tail.next = new_node
    new_node.next = temp
    temp.prev = new_node
    # end
  end

  def update(key, val)
  end

  def remove(key)
  end

  def each
    node = @head.prev
    until key.nil?
      node = node.prev
    end
  end

  # uncomment when you have `each` working and `Enumerable` included
  # def to_s
  #   inject([]) { |acc, node| acc << "[#{node.key}, #{node.val}]" }.join(", ")
  # end
end