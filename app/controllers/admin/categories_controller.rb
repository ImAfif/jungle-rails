class Admin::CategoriesController < ApplicationController

  http_basic_authenticate_with name: ENV['ADMIN_NAME'], password: ENV['ADMIN_PASSWORD']



  def index
    @categories = Category.order(name: :asc).all
  end