class UsersController < ApplicationController
  def index
    @users = User.all
    render json: @users
  end

  def show
    @user = User.find(params[:id])
    render json: @user
  end

  def create
    @create = User.new(user_params)
    if @create.save
       render json: @create, status: :true, message: "created successfully"

      #  render json: @user, status: :created
    else

       render json: @create.errors, status: :unprocessable_entity
    end
  end

  def update
    if @user.update(user_params)
      render json: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end
 
  # DELETE /users/1
  def destroy
    if @user.destroy
      render json: {status: true, message: "Deleted Successfully"}, status: :ok
    else
      render json: {status: false, message: "Failed"}, status: :unprocessable_entity
    end
  end


  private
  def user_params
   params.require(:user).permit(:email_id,:password)
  end
end
 