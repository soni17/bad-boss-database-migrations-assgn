class RemoveColumnsFromLocations < ActiveRecord::Migration[5.0]
  def up
    remove_column :locations , :name
    remove_column :locations , :address
    remove_column :locations , :state
    add_column :locations , :weather , :string
  end

  def down
    add_column :locations , :name , :string
    add_column :locations , :address , :string
    add_column :locations , :state , :string
    remove_column :locations, :weather
  end
end
