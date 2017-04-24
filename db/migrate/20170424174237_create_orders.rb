class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.string :mortuary_name
      t.string :contact_name
      t.integer :phone
      t.date :date

      t.timestamps
    end
  end
end
