class PagesController < ApplicationController
  def about
    # by default it renders the view with the same name as the action (about.html.erb)
    # each single action will have it's own view
  end

  def contact
    @members = ["sylvain", "noemi", "doug", "yann", "sasha"]
    # localhost:3000/contact?member=doug
    raise
    if params[:member].present?
      @members = @members.select { |member| member.start_with?(params[:member]) }
    end
    # raise
  end

  def home

  end
end
