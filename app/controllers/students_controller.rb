class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
  end

  def show
    @student = set_student
    @active_message = @student.active_message
  end

  def activate
    @student = set_student
    @student.make_active_true
    redirect_to action:"show"
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end