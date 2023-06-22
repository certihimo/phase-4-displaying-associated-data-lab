class UsersController < ApplicationController
    
    def show 
        id = params[:id]
        user = User.find(id)
        item = item.where("user_id = ?", id )

        render json: {
            id: user.id,
            username: user.username,
            city: user.city,
            items: item,
        }
    end    
end
