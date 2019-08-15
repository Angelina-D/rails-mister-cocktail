class AddColumnsToDoses < ActiveRecord::Migration[5.2]
  def change
    add_column :doses, :description, :string
    add_reference :doses, :cocktail, foreign_key: true
  end
end
