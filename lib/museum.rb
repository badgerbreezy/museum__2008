class Museum
  attr_reader :name, :exhibits, :patrons
  def initialize(name)
    @name = name
    @exhibits = []
    @patrons = []
  end

  def add_exhibit(exhibit)
    @exhibits << exhibit
  end

  def recommend_exhibits(patron)
    recommended_exhibits = []
    patron.interests.each do |interest|
      @exhibits.find_all do |exhibit|
        if exhibit.name == interest
          recommended_exhibits << exhibit
        end
      end
    end
    recommended_exhibits
  end

  def admit(patron)
    @patrons << patron
  end

  def patrons_by_exhibit_interest
    patrons_by_exhibit = Hash.new
    # patron_interests = @patrons.map do |patron|
    #   patron.interests
    # end.flatten
    # patron_interests


    @exhibits.each do |exhibit|
      @patrons.find_all do |patron|
        if interest == exhibit.name
          patrons_by_exhibit[exhibit] = patron
        end
      end
    end
    patrons_by_exhibit

  end



end
