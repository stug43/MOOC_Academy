class CreateLessons < ActiveRecord::Migration[5.2]
  def change
    create_table :lessons do |t|
			t.belongs_to :course, index: true
      t.integer :course
      t.string :title
      t.string :body

      t.timestamps
    end
  end
end
