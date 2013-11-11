class Backstage::UsersController < Backstage::BackstageController
  def index
    @q = User.search(params[:q])
    @q.sorts = 'id desc' if @q.sorts.empty?
    @users = @q.result
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
  end
end
