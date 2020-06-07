require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array
  fourth_second = [ ]
  fourth_second = holiday_hash[:summer][:fourth_of_july]
  fourth_second[1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash.each do |season, holiday|
    holiday.each do |attribute, data|
      if attribute == :christmas
        holiday_hash[:winter][:christmas] << "Balloons"
      elsif attribute == :new_years
        holiday_hash[:winter][:new_years] << "Balloons"
      end
    end
  end

end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  # memorial_supplies = [ ]
  holiday_hash[:spring][:memorial_day] << supply
  holiday_hash
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  winter_sup = []
  supply_str = " "
  if holiday_hash[:winter]
      holiday_hash[:winter].each_value do |supply|
        winter_sup << supply
    end
  end
  supply_str = winter_sup.join ", "
  supply_str
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  holiday_array =[ ]
  holidays_cap = ""
  event_str = ""
  holiday_hash.each do |season, holiday|
    holiday.each do |event, values|
      event_str = event.to_s
      holiday_array << values
      holidays_cap = holiday_array.join ", "
      puts "#{season.capitalize}:"
      puts "  #{event_str.capitalize}: #{holidays_cap.capitalize}"
      end
  end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"

end







