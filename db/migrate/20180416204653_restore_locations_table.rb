class RestoreLocationsTable < ActiveRecord::Migration[5.0]
  def change
    add_column :locations , :name , :string
    add_column :locations , :state , :string
    add_column :locations ,:address , :string
    remove_column :locations, :weather
  end
end
