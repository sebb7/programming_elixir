defmodule Chop do

  def guess(number, down..top) do
    guess = div(top+down, 2)
    IO.puts "Is it #{guess}?"
    _guess(number, guess, down..top)
  end

  defp _guess(number, number, _.._) do
    IO.puts "#{number}"
  end

  defp _guess(number, _, down..top) when number > div(top+down,2) do
    guess(number, (div(top+down,2)+1)..top)
  end

  defp _guess(number, _, top..down) when number < div(top + down,2) do
    guess(number, down..(div(top + down,2)-1))
  end

end
