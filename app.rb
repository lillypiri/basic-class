# In Ruby everything is an object. Classes are a way of describing objects.
# A class has a constructor which is called 'initialize'. When you call Class.new (that is the name of the Class and then .new), it runs the constructor. The constructor sets up the new object of type class.
# Variables have a type. The basic types are: number, string, boolean (true or false).


class Animal
    def initialize (name)
        @name = name
    end

    def speak
        "?"
    end
end

# Running this app in terminal will spit out "Socks: meow
#Buddy: woof"
# In Animal Class above, 'name' will only work in Animal class and subclasses (Cat and Dog) because they inherit it. The '<' means it extends the class. So "Cat extends Animal".

class Cat < Animal
    def speak
        @name + ": meow"
    end
end

class Dog < Animal
    def speak
        @name + ": woof"
    end
end


cat = Cat.new "Socks"

puts cat.speak

dog = Dog.new "Buddy"

puts dog.speak
