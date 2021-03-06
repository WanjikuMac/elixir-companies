defmodule Companies.Schema.IndustryTest do
  @moduledoc """
    This module holds the unit tests to the industry changeset
  """
  use Companies.DataCase

  alias Companies.{
    Schema.Industry
  }

  @valid_industry %{
    name: "Mining industry"
  }
  @invalid_industry %{}

  describe "industry changeset " do
    test "industry/1 validates with the correct data" do
      changeset = Industry.changeset(%Industry{}, @valid_industry)
      assert changeset.valid?
    end

    test "errors out with invalid data" do
      changeset = Industry.changeset(%Industry{}, @invalid_industry)
      refute changeset.valid?
    end
  end
end
