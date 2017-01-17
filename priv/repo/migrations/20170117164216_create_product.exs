defmodule Test.Repo.Migrations.CreateProduct do
  use Ecto.Migration

  def change do
    create table(:products) do
      add :title, :string
      add :text, :text

      timestamps()
    end

  end
end
