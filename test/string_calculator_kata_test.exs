defmodule StringCalculatorKataTest do
  use ExUnit.Case
  doctest StringCalculatorKata

  import StringCalculatorKata

  test "sum two empty strings" do
    assert sum("","") == 0
  end

  test "sum one empty string with a valid natural number 1" do
    assert sum("1","") == 1
  end

  test "sum one empty string with a valid natural number 2" do
    assert sum("2","") == 2
  end

  test "sum one empty string with a valid natural number" do
    testing("1", "", 1)
    testing("2", "", 2)
    testing("10", "", 10)
    testing("400", "", 400)
    testing("1721", "", 1721)
  end

  test "sum a valid natural number with an empty string" do
    testing("", "1", 1)
    testing("", "2", 2)
    testing("", "10", 10)
    testing("", "400", 400)
    testing("", "1721", 1721)
  end

  test "sum a invalid number with a valid number" do
    testing("dafasd", "1", 1)
    testing("dadss", "2", 2)
    testing("adfasdfa", "10", 10)
    testing("a", "400", 400)
    testing("fdfasd", "1721", 1721)
  end

  test "sum a valid number with a invalid number" do
    testing("1", "adfadf", 1)
    testing("2", "dfdd", 2)
    testing("10", "ddd", 10)
    testing("400", "adfads", 400)
    testing("1721", "adfads", 1721)
  end

   test "sum two invalid numbers" do
    testing("dfasd", "adfasdf", 0)
   end


  defp testing(a, b, expected) do
    assert sum(a,b) == expected
  end


end
