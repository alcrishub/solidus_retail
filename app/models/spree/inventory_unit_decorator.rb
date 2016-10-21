module Spree
  module InventoryUnitDecorator
    def count_on_hand_for(stock_location)
      stock_items.find_by(stock_location_id: stock_location.id).count_on_hand
    end
  end
end

Spree::InventoryUnit.prepend Spree::InventoryUnitDecorator
