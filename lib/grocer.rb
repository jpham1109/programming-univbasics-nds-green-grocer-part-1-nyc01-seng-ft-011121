require 'pry'

def find_item_by_name_in_collection(name, collection)
  result = nil
  collection.each do |item|
    if item.value?(name)
      result = item
    end
  end
  result
end

def consolidate_cart(cart)
  result = []
  cart.each do |item|
    item.each do |k, v|
      find_item_by_name_in_collection(item[k], cart)
      #binding.pry
      item[:count] = 1 
      result << item
      
      binding.pry
      end 
    end
  end
  result
end


  