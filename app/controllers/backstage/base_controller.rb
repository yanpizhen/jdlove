class Backstage::BaseController < ActionController::Base
  before_action :login_required
  layout 'backstage'

  def admin_signed_in?
    current_admin
  end

  # 获取当前管理用户
  def current_admin
    @current_admin
  end

  # 获取cookie登录的用户
  def login_from_cookies
    if cookies[:remember_admin_token]

    end
  end

  # 获取session登录的用户
  def login_from_session

  end

  private

  def login_required
    redirect_to backstage_login_path unless admin_signed_in?
  end
end