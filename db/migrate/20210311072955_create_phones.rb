class CreatePhones < ActiveRecord::Migration[6.1]
  def change
    create_table :phones do |t|
      t.string :brand
      t.integer :imei
      t.string :name
      t.string :color
      t.integer :capacity

      t.timestamps
    end
  end
end
