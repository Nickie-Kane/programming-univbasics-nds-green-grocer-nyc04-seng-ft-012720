require 'pry'
def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  #
  # Consult README for inputs and outputs
  counter = 0 
  cart = nil 
  while counter < collection.length do 
        if name == collection[counter][:item]  
          cart = collection[counter] 
        end
    
  counter += 1 
  end 
  return cart
end

def consolidate_cart(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
  # puts cart
  new_cart = []
  counter = 0 
  while counter < cart.length do  
     cart_item = find_item_by_name_in_collection(cart[counter][:item], new_cart)
     if cart_item != nil 
       cart_item[:count] += 1  
     else 
       cart_item = {
          :item => cart[counter][:item],
          :price => cart[counter][:price],
          :clearance => cart[counter][:clearance],
          :count => 1
       }
       new_cart << cart_item
     end
  counter += 1
  end
  # binding.pry
  return new_cart 
end

def apply_coupons(cart, coupons)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
  
end

def apply_clearance(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
end

def checkout(cart, coupons)
  # Consult README for inputs and outputs
  #
  # This method should call
  # * consolidate_cart
  # * apply_coupons
  # * apply_clearance
  #
  # BEFORE it begins the work of calculating the total (or else you might have
  # some irritated customers
end
