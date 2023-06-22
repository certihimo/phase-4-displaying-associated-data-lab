class ItemsController < ApplicationController

    def index 
        items = Item.all 
        item_data = items.map do |item|
          {
            id: item.id,
            name: item.name,
            description: item.description,
            price: item.price,
            user: item.user
          }
        end
      
        render json: item_data
       end
      
end