class Word
  attr_accessor :word
  attr_reader :id

  @@word_list = []

  def self.clear
    @@word_list = []
  end

  def initialize(word)
    @word = word
    @id = @@word_list.length + 1
  end

  def self.all
    @@word_list
  end

  def save
    @@word_list.push(self)
  end

  def self.find(id)
    word_id = id.to_i()
    @@word_list.each do |word|
      if word.id == word_id
        return word
      end
    end
  end
end

class Definition
  attr_accessor :definition
  attr_reader :id

  @@definition_list = []

  def self.clear_list
    @@definition_list = []
  end

  def initialize(definition)
    @definition = definition
    @id = @@definition_list.length + 1
  end

  def self.all
    @@definition_list
  end

  def save_definition
    @@definition_list.push(self)
  end

  def self.find(id)
    definition_id = id.to_i()
    @@definition_list.each do |definition|
      if definition.id == definition_id
        return definition
      end
    end
  end
end
