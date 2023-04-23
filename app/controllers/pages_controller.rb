# true Top level documentation
class PagesController < ApplicationController
  def contact; end

  def about
    @title = 'My Cool About Title'
  end

  def home
    @projects = Project.all.limit(10)
  end

  def error; end
end
