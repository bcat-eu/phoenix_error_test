defmodule Test.Product do
  use Test.Web, :model

  schema "products" do
    field :title, :string
    field :text, :string

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:title, :text])
    |> validate_required([:title, :text])
  end
end
