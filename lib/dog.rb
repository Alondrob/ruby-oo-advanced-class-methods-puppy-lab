class Dog
    @@all = []

    
    attr_accessor :name

    def initialize(name)
        @name = name
        # @@all << self
        self.save
    end



    def self.all
        @@all
    end

    def self.clear_all
        @@all = []
    end

    def self.print_all
        @@all.each {|dog| puts dog.name}
    end

    def save
        @@all << self
    end
end

   #[pluto,fido,maddy]

    dog_1 = Dog.new("pluto")
    dog_2 = Dog.new("Fido")
    dog_3 = Dog.new("Maddy")

    p Dog.all
  