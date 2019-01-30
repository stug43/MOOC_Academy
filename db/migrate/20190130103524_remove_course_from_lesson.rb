class RemoveCourseFromLesson < ActiveRecord::Migration[5.2]
  def change
		remove_column :lessons, :course
  end
end
