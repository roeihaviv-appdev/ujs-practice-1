class AddBodyToTasks < ActiveRecord::Migration[6.1]
  def change
    add_column :tasks, :body, :text
  end
end
