require 'pry'


def nyc_pigeon_organizer(data)
  names = data.collect do |category, list_of_catagory_items|
    list_of_catagory_items.values
  end.flatten.uniq


  new_hash = {}
    names.each do |name|
        new_hash[name] = {}
  end

  data.each do |category, list_of_catagory_items|
    new_hash.each do |name, empty_hash|
      new_hash[name][category] = []
    end
  end


  data.each do |category, list_of_catagory_items|
    new_hash.each do |name, hash|
      list_of_catagory_items.each do |key, value|
        if value.include? name
          new_hash[name][category]<<key.to_s
        end
      end
    end
  end
new_hash
end
