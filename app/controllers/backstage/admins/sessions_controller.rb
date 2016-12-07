class Backstage::Admins::SessionsController < Devise::SessionsController
  layout 'backstage'
  def create
    super
  end
end