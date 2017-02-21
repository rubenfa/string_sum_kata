defmodule StringCalculatorKata do
  @moduledoc """
  Documentation for StringCalculatorKata.
  """

  @doc """  

  """

    
  def sum(a, b) do
    cond do
      is_numeric(a) && is_numeric(b) -> String.to_integer(a) + String.to_integer(b)
      is_numeric(a) -> String.to_integer(a)
      is_numeric(b) -> String.to_integer(b)
      true -> 0
    end
  end  

  defp is_numeric(str) do
      case Float.parse(str) do
        {_num, ""} -> true
        _          -> false
      end
  end 
end
