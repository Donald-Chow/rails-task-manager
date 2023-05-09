class TasksController < ApplicationController

  before_action :set_task, only: [:show, :edit, :update, :destroy]
  # create
  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    if @task.save
      redirect_to task_path(@task)
    else
      render :new, status: :unprocessable_entity
    end
  end

  # read
  def index
    @tasks = Task.all
  end

  def show
  end

  # update
  def edit
  end

  def update
    if @task.update(task_params)
      redirect_to task_path(@task)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # destroy
  def destroy
    @task.destroy
    redirect_to tasks_path, status: :see_other
  end

  private

  def set_task
    @task = Task.find(params[:id])
  end

  # Strong params -> White listing the info coming from form
  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end
end
