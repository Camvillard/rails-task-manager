class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :done, :destroy]

  def index
    @tasks = Task.all
  end

  def show
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(tasks_params)
    @task.save
    redirect_to task_path(@task)
  end

  def edit
  end

  def update
    @task.update(tasks_params)
    redirect_to task_path(@task)
  end

  def done
    if @task.completed == true
      @task.completed = false
    else
      @task.completed = true
    end
    @task.save
    redirect_to tasks_path
  end

  def destroy
    @task.delete
    redirect_to tasks_path
  end

  private

  def set_task
    @task = Task.find(params[:id])
  end

  def tasks_params
    params.require(:task).permit(:title, :details, :completed)
  end
end
