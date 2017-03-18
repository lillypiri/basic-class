# This tells this file to use rspec.
# You will also need to add the gem dependency in the Gemfile.
require 'rspec'
# This tells this file to include the entire contents of 'app.rb' in this file.
# It makes the classes in app.rb available to this file.
require_relative "../app"

# This describes what the Cat class will do.
describe Cat do
# This 'describe' block will test the .speak method.
# 'describe' is a method that rspec provides.
# In this case, it takes one argument ('.speak' as a string is the argument) which is
# a human readable hint of what we are testing. 'do' is just the start of the block.
  describe '.speak' do
    # 'it' is another method that rspec provides. "says meow" is for the humans to know
    # what this is actually going to test. 'do' opens a new block.
    it "says meow" do
      # This makes a new cat that will be our test example.
      cat = Cat.new('Socks')
      # We expect our cat's 'speak' to equal to 'Socks: meow'
      expect(cat.speak).to eq ('Socks says \'meow\'')
    end
  end

  describe Dog do
    describe '.speak' do
      it "says woof" do
        dog = Dog.new('Buddy')
        expect(dog.speak).to eq ('Buddy says \'woof\'')
      end
    end
  end
end

# To run the tests, type 'rspec test' into terminal.
