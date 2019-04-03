# ┌───────────────────────────────────────────────────────────────────────┐
# │ Inspired by the book "Functional Web Development" by Lance Halvorsen. │
# └───────────────────────────────────────────────────────────────────────┘
defmodule Islands.Response do
  use PersistConfig

  @book_ref Application.get_env(@app, :book_ref)

  @moduledoc """
  Defines the `response` type for the _Game of Islands_.
  \n##### #{@book_ref}
  """

  alias Islands.Island

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
