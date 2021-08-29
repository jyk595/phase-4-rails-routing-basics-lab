class StudentsController < ApplicationController

  def index
    students = Student.all
    render json: students
  end

  def grades
    student_grades = Student.order(grade: :desc)
    render json: student_grades
  end

end
