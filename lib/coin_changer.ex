defmodule CoinChanger do
  def change(amount) do
    sum_denominations(amount, [25, 10, 5, 1], [])
  end
  
  def sum_denominations(0, denominations, acc) do
    acc
  end
  
  def sum_denominations(amount, [den | rest], acc) do
    if amount < den do
      sum_denominations(amount, rest , acc)
    else 
      sum_denominations(amount - den, [den] ++ rest, acc ++ [den])
    end
  end
  
end
