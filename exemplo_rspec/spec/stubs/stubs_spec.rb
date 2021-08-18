require 'student'
require 'course'

describe 'Stubs' do
  it '#has_finished?' do
    student = Student.new
    course = Course.new
    allow(student).to receive(:has_finished?).with(an_instance_of(Course)).and_return(true)
    course_finished = student.has_finished?(course)
    expect(course_finished).to eq(true)
  end


end
