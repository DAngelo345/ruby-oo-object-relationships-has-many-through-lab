class Doctor
    attr_accessor :name, :doctor

   @@all = []
    
    def initialze(name)
        
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end


end
