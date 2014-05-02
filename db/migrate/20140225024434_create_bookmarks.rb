class CreateBookmarks < ActiveRecord::Migration
  def change
    create_table :bookmarks do |t|
      t.string :url
      t.string :name
      t.datetime :saved_at
      t.integer :user_id
      t.timestamps
    end
      add_index :bookmarks, [:user_id, :created_at]
  end
end
