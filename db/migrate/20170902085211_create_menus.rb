class CreateMenus < ActiveRecord::Migration[5.1]
  def change
    create_table :menus do |t|
      t.string :category
      t.string :name
      t.integer :price

      t.timestamps
    end
  end
end
