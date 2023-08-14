class Integer
  # Integer#hash already implemented for you
end

class Array
  def hash
    self.empty? ? length : length + first
  end
end

class String
  def hash
    alphabet = ("a".."z").to_a
    self.empty? ? length : length + alphabet.index(self[0].downcase)
  end
end

class Hash
  # This returns 0 because rspec will break if it returns nil
  # Make sure to implement an actual Hash#hash method
  def hash
    alphabet = ("a".."z").to_a
    self.empty? ? length : length + alphabet.index(self.values[0].downcase)
  end
end