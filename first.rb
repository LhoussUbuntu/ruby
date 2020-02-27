module Enumerable
  def try
    if block_given?
      0.upto(length - 1) do |i|
        yield self[i]
      end
    else
      puts 'no block given'
    end
  end
end
x = [5, 8, -3, 5, 5, 5]

x.try { |num| puts num * 2 }
