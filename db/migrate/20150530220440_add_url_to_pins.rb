class AddUrlToPins < ActiveRecord::Migration
  def change
    add_column :url, :string
  end
end
