def hello_t(array)
  if block_given?
    i = 0

    while i < array.length do
      yield(array[i])

      i += 1
    end

    return array
  else
    puts "Hey! No block was given!"
  end
end

hello_t(['Tom', 'Timothy', 'David']) do |name|
  if name.start_with?("T")
    puts "Hi, #{name}"
  end
end

# def hello_t_again(array)
#   array.each do |name|
#     if name.start_with("T")
#       puts "Hi, #{name}"
#     end
#   end
# end
