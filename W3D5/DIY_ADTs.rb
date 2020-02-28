 class Stack
    
    def initialize
      @stack = []
    end

    def push(el)
      @stack.push(el)
    end

    def pop
      @stack.pop
    end

    def peek
      @stack[-1]  # returns, but doesn't remove, the top element in the stack
    end

  end

    class Queue

        def initialize
            @queue = []
        end

        def enqueue(el)
            @queue.push(el)
        end

        def dequeue
            @queue.shift
        end

        def peek
            @queue[0]
        end
    
    end

    class Map
        
        def initialize
            @map = Array.new
        end

        def set(key,value)
            keys = []
            @map.each_with_index { |pair| keys << pair[0] }
            if !keys.include?(key)
                @map << [key,value]
            else
                @map = @map.map { |pair| pair[0] == key ? [key,value] : pair}
            end
        end

        def get(key)
            @map.each {|pair| return pair[1] if pair[0] == key}
        end

        def delete(key)
            @map = @map.select {|pair| pair[0] != key}
        end

        def show
            @map.each do |pair|
                puts "#{pair[0]} => #{pair[1]}"
            end
        end


    end
  
  