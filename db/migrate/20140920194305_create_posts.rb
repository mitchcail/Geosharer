class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.text :content
      t.references :user, index: true

      # Location Data
      t.integer :radius
      t.point :location, :geographic => true
      t.geometry :influence, :geographic => true

      t.timestamps
    end
  end
end
