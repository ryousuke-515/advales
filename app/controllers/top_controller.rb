class TopController < ApplicationController
  def index
    @items = Item.order("create_at DESC")
  end
  
  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to root_path
    end
  else
    render :new
  end

  private
  def item_params
    params.require(:item).permit(:name, :image, :description, :category_id, :price)
  end
end
