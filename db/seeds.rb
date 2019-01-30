require 'faker'

Course.destroy_all
Lesson.destroy_all

100.times do |index|
	course = Course.create!()
	course.title = "Apprenons le seed sans faker #{index} !!"
	course.description = Faker::String.random(50..125)
	course.save
end

100.times do |index|
  lesson = Lesson.create!({course: Course.all[rand((Course.all.size)-1)]})
	lesson.title = "Etape #{index} : planter une graine."
	lesson.body = Faker::String.random(50..125)
	lesson.save
end
