def consolidate_cart(cart)
  newHash = {}
  cart.each do |item|
    if newHash[item.keys[0]]
      newHash[item.keys[0]][:count] += 1
    else
      newHash[item.keys[0]] = {
        count: 1,
        price: item.values[0][:price],
        clearance: item.values[0][:clearance]
      }
    end
  end
  newHash
end
        

def apply_coupons(cart, coupons)
  coupons.each do |coupon|
    if cart.keys.include ? coupon[item]
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  total = 0.00
  organizedCart = consolidate_cart(cart)
  couponedCart = apply_coupons(organizedCart, coupons)
  clearancedCart = apply_clearance(couponedCart)
  
  clearancedCart.keys.each do |item|
    total += clearancedCart[item][:price]*clearancedCart[item][:count]
  end
  if total > 100.00
    total = (total*0.90).round
    total
  end
  
end
