class Genre
  attr_reader :id, :items
  attr_accessor :name, :genre

  def initialize(name)
    super()
    @id = Random.rand(1..1000)
    @name = name
    @items = []
  end

  def add_item(item)
    @items << item
    item.add_genre(self)
  end
end
