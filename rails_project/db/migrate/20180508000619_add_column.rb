class AddColumn < ActiveRecord::Migration[5.1]
  def change
    add_column :artworks, :image_url, :string, null: false
  end
end
