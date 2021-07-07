require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  
  holiday_hash[:summer][:fourth_of_july][1]
  
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  
  holiday_hash.each do |season, holiday|
    if season == :winter
      holiday.each do |day, item|
        item << supply
      end
    end
  end

end


def add_supply_to_memorial_day(holiday_hash, supply)
  
  holiday_hash.each do |season, holiday|
    if season == :spring
      holiday.each do |day, item|
        item << supply
      end
    end
  end
  
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
 
 holiday_hash[season][holiday_name] = supply_array

end

def all_winter_holiday_supplies(holiday_hash)
  
  supplies = []
  holiday_hash.each do |season, holiday|
    holiday.each_value do |items|
      supplies << items
    end
  end
  
  return supplies.to_s
end

def all_supplies_in_holidays(holiday_hash)
  
  day_array = []
  holiday_hash.each do |season, holiday|
    puts season.capitalize.to_s + ":" 

    holiday.each do |day, items|
      
      day_array = day.to_s.split("_")
      day_array.each do |x|
        x.capitalize!
      end
      
      puts "  " + day_array.join(" ") + ": "  + items.join(", ")
      
    end
  end
  
  
end

def all_holidays_with_bbq(holiday_hash)
  
  supplies = []
  holiday_hash.each do |season, holiday|
    holiday.each do |day, item|
      if item.include?("BBQ")
        supplies << day
      end
    end
  end
  return supplies
end









