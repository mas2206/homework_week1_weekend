def pet_shop_name(pet_shop)
  return pet_shop[:name]
end


def total_cash(pet_shop)
  return pet_shop[:admin][:total_cash]
end


def add_or_remove_cash(pet_shop, number)
  return pet_shop[:admin][:total_cash] += number
end


def pets_sold(pet_shop)
  return pet_shop[:admin][:pets_sold]
end


def increase_pets_sold(pet_shop, number)
  return pet_shop[:admin][:pets_sold] += number
end


def stock_count(pet_shop)
  return pet_shop[:pets].count()
end


def pets_by_breed(pet_shop, breed)
  breed_array = []
  for pet in pet_shop[:pets]
    if breed == pet[:breed]
      breed_array << pet
    end
  end
  return breed_array
end


def find_pet_by_name(pet_shop, name)
  for pet in pet_shop[:pets]
    if name == pet[:name]
      return pet
    end
  end
  return nil
end


def remove_pet_by_name(pet_shop, name)
  pets = pet_shop[:pets]
  for pet in pets
    if name == pet[:name]
      pets.delete(pet)
    end
  end
end


def add_pet_to_stock(pet_shop, new_pet)
  pet_shop[:pets] << new_pet
  return pet_shop[:pets].count()
end


def customer_pet_count(customer)
  return customer[:pets].count()
end


def add_pet_to_customer(customer, new_pet)
  customer[:pets] << new_pet
  return customer[:pets].count()
end