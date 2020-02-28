class Stack

    def initialize
        @stack = []
    end

    def push(el)
        self.push(el)
    end

    def pop
        self.pop
    end

    def peek
        self[-1]
    end


end

class Queue

    def initialize
        @queue = []
    end

    def enqueue(el)
        @queue << el
    end

    def dequeue
        @queue.shift
    end

    def peek
        @queue[0]
    end

end

class Map

    def initialize(length)
        @map = Array.new(length) {Array.new(2)}
    end
    
    def set(key,value)
        @map.each do |pair|
            if pair[0] == key
                pair[1] = value
            end
        end
        @map << [key, value] if self.none? {|pair| pair[0] == key}
    end

    def get(key)
        @map.each {|pair| return pair[1] if pair[0] == key}
    end

    def delete(key)
        @map.each_with_index do |pair, i|
            @map.delete_at(i) if pair[0] == key
        end
    end

    def show
        @map
    end
end