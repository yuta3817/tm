class CreateCards < ActiveRecord::Migration[6.0]
  def change
    create_table :cards do |t|
      t.date        :date, null: false
      t.references  :list, null: false, foreign_key: true
      t.string      :title, null: false, limit: 255
      t.text        :memo,  null: false, limit: 1000
      t.timestamps
    end
  end
end