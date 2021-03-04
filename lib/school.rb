class School

    attr_reader :name, :roster

    def initialize(name, roster = {})
        @name = name
        @roster = {}
    end

    def add_student(name, grade)
       if
        @roster.keys.include?(grade)
        @roster[grade].push name
       else
        @roster[grade] =[]
        @roster[grade].push name
       end
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        @roster.collect do |grade, nam|
            @roster[grade] = nam.sort
        end
    @roster
    end
end