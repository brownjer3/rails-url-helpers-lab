class PostsController < ApplicationController

    def activate
        @student = Student.find(params[:id])
        @student.active = !@student.active
        @student.save
        # render "students/show"
        # redirect("/students/#{@student.id}")
        redirect_to student_path(@student)
    end

end