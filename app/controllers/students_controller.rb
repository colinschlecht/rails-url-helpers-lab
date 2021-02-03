class StudentsController < ApplicationController
  before_action :set_student, only: :show 
  
  def index
    @students = Student.all
  end

  def activate
    set_student.activate_student
    redirect_to student_path(@student.id)
   end
  
  private

    def set_student
      @student = Student.find(params[:id])
    end
end