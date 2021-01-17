class CreateLists < ActiveRecord::Migration[6.0]
  def change
    create_table :lists do |t|

      t.string      :title, null: false, limit: 255
      t.text        :memo, limit: 1000
      t.references  :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end