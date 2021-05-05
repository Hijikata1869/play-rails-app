class TrainingMenus < ActiveRecord::Migration[6.0]
  def change
    create_table :training_menus do |t|
      t.references :user, null:false, foreign_key: true
      t.string :training_menu, null: false
      t.string :training_step, null: false
      t.integer :number_of_time, null:false, default: 0
      t.string :set, null: false

      t.timestamps
    end
  end
end
