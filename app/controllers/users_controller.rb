class UsersController < ApplicationController
  def edit
  end

  def update
    if current_user.update(user_params)
      # 更新成功時の処理
      redirect_to root_path
    else
      # 更新失敗時の処理
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email)
  end

end
