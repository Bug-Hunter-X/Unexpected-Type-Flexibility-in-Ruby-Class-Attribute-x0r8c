```ruby
class MyClass
  def initialize(value)
    raise TypeError, "Value must be an Integer" unless value.is_a?(Integer)
    @value = value
  end

  def value
    @value
  end

  def value=(new_value)
    raise TypeError, "Value must be an Integer" unless new_value.is_a?(Integer)
    @value = new_value
  end
end

my_object = MyClass.new(10)
puts my_object.value # Output: 10

my_object.value = 20
puts my_object.value # Output: 20

begin
  my_object.value = "hello"
rescue TypeError => e
  puts e.message # Output: "Value must be an Integer"
end
```