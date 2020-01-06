require 'pry'
def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  #
  # Consult README for inputs and outputs
  counter = 0 
  cart = nil 
  while counter < collection.length do 
    # binding.pry
        if name == collection[counter][:item]  
          cart = collection[counter] 
        end
    
  counter += 1 
  # binding.pry
  end 
  return cart
  # binding.pry
end

def consolidate_cart(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
  # puts cart
  new_cart = {}
  counter = 0 
  while counter < cart.length do 
     new_cart[:item] = cart[counter][:item]
     new_cart[:price] = cart[counter][:price]
     new_cart[:clearance] = cart[counter][:clearance]
     if 
     new_cart[:count] = cart[counter] = 
    # puts new_cart
  counter += 1
  end
  puts new_cart
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
