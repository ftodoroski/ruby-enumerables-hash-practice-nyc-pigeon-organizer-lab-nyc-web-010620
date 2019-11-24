def nyc_pigeon_organizer(data)
  pigeons = Hash.new{}

  # Makes an empty hash with the pigeons name
  data[:gender].each do |gender, names|
    names.each do |pigeon_name|
      pigeons[pigeon_name] = {}
      end
  end

  # Adds attributes to each of the pigeons
  data.each_key do |attribute|
    pigeons.each do |name, prop|
      prop[attribute] = []
    end
  end

  # Adds value to the attributes
  data.each do |attribute, attr_data|
    attr_data.each do |info, names|
      names.each do |name|
        pigeons[name][attribute] << info.to_s
      end
    end
  end

  pigeons
end
