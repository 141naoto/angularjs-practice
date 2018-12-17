class CreateTodos < ActiveRecord::Migration[5.2]
  def change
    create_table :todos do |t|
      t.integer :todo_list_id, null:false
      t.string :description, null:false
      t.boolean :completed, null:false, default: false

      t.timestamps
    end
  end
end
