class ToDoListsController < ApplicationController
  def index
    @to_do_lists = ToDoList.all
  end

  def show
    @to_do_list = ToDoList.find(params[:id])
  end

  def edit
    @to_do_list = ToDoList.find(params[:id])
  end

  def update
    @to_do_list = ToDoList.find(params[:id])

    if @to_do_list.update(to_do_list_params)
      redirect_to to_do_lists_path
    else
        render :edit
    end
  end

  def destroy
   @to_do_list = ToDoList.find(params[:id])
   @to_do_list.destroy
   redirect_to to_do_lists_path
  end 

  def new
    @to_do_list = ToDoList.new
  end

  def create
    @to_do_list = ToDoList.new(to_do_list_params)

    if @to_do_list.save
        redirect_to to_do_lists_path
    else
      render :new
    end
  end

private
def to_do_list_params
  params.require(:to_do_list).permit(:item, :notes)
end

end
