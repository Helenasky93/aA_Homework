require 'set'

class GraphNode
    attr_accessor :val,:neighbors

    def initialize(val)
        self.val = val
        self.neighbors = []
        
    end

    
end

a = GraphNode.new('a')
b = GraphNode.new('b')
c = GraphNode.new('c')
d = GraphNode.new('d')
e = GraphNode.new('e')
f = GraphNode.new('f')
a.neighbors = [b, c, e]
c.neighbors = [b, d]
e.neighbors = [a]
f.neighbors = [e]

def bfs(starting_node, target_value)
    # return starting_node if starting_node == target_value
    visited = Set.new()
    queue = [starting_node]
    until queue.empty?
        check_node = queue.shift
        if !visited.include?(check_node.val)
            visited.add(check_node.val)
            if check_node.val == target_value
                return check_node
            else
                queue.concat(check_node.neighbors)
            end
        end
        
        # p check_node
        
    end
    
end

p bfs(a, "b")
p bfs(a, "f")