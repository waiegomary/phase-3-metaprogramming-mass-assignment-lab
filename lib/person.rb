class Person
  attr_accessor :name, :birthday, :hair_color, :eye_color, :height,
                :weight, :handed, :complexion, :t_shirt_size,
                :wrist_size, :glove_size, :pant_length, :pant_width

  def initialize(attributes)
    attributes.each do |key, value|
      send("#{key}=", value) if respond_to?("#{key}=")
    end
  end
end

avi_attributes = {
  name: 'Avi',
  birthday: '1990-01-01',
  hair_color: 'Black',
  eye_color: 'Brown',
  height: '6 feet',
  weight: '180 lbs',
  handed: 'Right',
  complexion: 'Medium',
  t_shirt_size: 'M',
  wrist_size: '7 inches',
  glove_size: 'L',
  pant_length: '32 inches',
  pant_width: '34 inches'
}

avi = Person.new(avi_attributes)
puts avi.name
puts avi.birthday
# ... access other attributes

spencer_attributes = {
  name: 'Spencer',
  hair_color: 'Blonde',
  eye_color: 'Blue',
  height: '5 feet 10 inches',
  handed: 'Left',
  t_shirt_size: 'L',
  pant_length: '34 inches',
  pant_width: '36 inches'
}

spencer = Person.new(spencer_attributes)
puts spencer.name
puts spencer.hair_color
# ... access other attributes
