# ┌───────────────────────────────────────────────────────────────────────┐
# │ Inspired by the book "Functional Web Development" by Lance Halvorsen. │
# └───────────────────────────────────────────────────────────────────────┘
defmodule Islands.Response do
  @moduledoc """
  Defines the response type for the _Game of Islands_.

  ##### Inspired by the book [Functional Web Development](https://pragprog.com/book/lhelph/functional-web-development-with-elixir-otp-and-phoenix) by Lance Halvorsen.
  """

  alias Islands.Island

  @typedoc "Response for the Game of Islands"
  @type t ::
          {}
          | {:ok, :player2_added}
          | {:error, any}
          | {:hit | :miss, Island.type() | :none, :no_win | :win}
          | {:ok, :all_islands_positioned}
          | {:ok, :island_positioned}
          | {:ok, :islands_set}
          | {:ok, :stopping}
end
