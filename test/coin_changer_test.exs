Code.require_file "../test_helper.exs", __FILE__

defmodule CoinChangerTest do
  use ExUnit.Case

  test "changes 1" do
    assert(CoinChanger.change(1) == [1])
  end
  
  test "changes 2" do
    assert(CoinChanger.change(2) == [1, 1])
  end
  
  test "changes 3" do
    assert(CoinChanger.change(3) == [1, 1, 1])
  end
  
  test "changes 5" do
    assert(CoinChanger.change(5) == [5])
  end
  
  test "changes 6" do
    assert(CoinChanger.change(6) == [5, 1])
  end
  
  test "changes 7" do
    assert(CoinChanger.change(7) == [5, 1, 1])
  end
  
  test "changes 10" do
    assert(CoinChanger.change(10) == [10])
  end
  
  test "changes 16" do
    assert(CoinChanger.change(16) == [10, 5, 1])
  end
  
  test "changes 20" do
    assert(CoinChanger.change(20) == [10, 10])
  end
  
  test "changes 25" do
    assert(CoinChanger.change(25) == [25])
  end
  
  test "changes 99" do
    assert(CoinChanger.change(99) == [25, 25, 25, 10, 10, 1, 1, 1, 1])
  end
  
end



