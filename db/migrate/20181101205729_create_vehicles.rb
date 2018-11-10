class CreateVehicles < ActiveRecord::Migration[5.2]
  def change
    create_table :vehicles do |t|
      t.string :name
      t.references :user, foreign_key: true
      t.references :universe, foreign_key: true
      t.datetime :deleted_at
      t.string :privacy
      t.string :page_type, default: 'Vehicle'

      t.timestamps
    end
  end
end