class UsersController < ApplicationController
  def list
    @users = User.all
  end

  def add
    @gender_options = [['Male','m'],['Female','f']]
  end

  def create
    u = User.new
    u.first_name = params[:first_name]
    u.last_name  = params[:last_name]
    u.email      = params[:email]
    u.gender     = params[:gender]
    u.bio        = params[:bio]
    u.save
    redirect_to :action => "list"
  end
  
  def delete
    u = User.find(params[:id])
    u.destroy
    redirect_to :action => "list"
  end
end


