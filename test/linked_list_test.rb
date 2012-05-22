require "test/unit"
require "turn"
require "linked_list"

class LinkedListTest < Test::Unit::TestCase
  def setup
    @list = LinkedList.new
  end

  def test_index
    @list.add(6)
    assert_equal 6, @list[0]
  end

  def test_first
    @list.add(60)
    assert_equal @list[0], @list.first 
  end

  def test_insert
    @list << 6
    assert_equal 6, @list[0]
  end

  def test_empty_list
    assert @list.empty?
  end

  def test_size
    assert_equal 0, @list.size
    @list << 7
    assert_equal 1, @list.size
    @list << 8
    assert_equal 2, @list.size
  end
end