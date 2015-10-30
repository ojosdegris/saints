defmodule Saints.Note do
  use Saints.Web, :model
  schema "note" do
    # field :donor_id, :integer     
    field :memo, :string     
    timestamps
    belongs_to :donor, Saints.Donor 
  end

  def changeset(model, params \\ :empty) do
    model
    |> cast(params, ~w(memo), [])
  end

end