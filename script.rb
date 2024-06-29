dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, dict)
  if string.length == 0
    puts "Error: String length 0"
    return
  end

  cleaned_string = string.downcase.gsub(/[^a-zA-Z ]/, '')
  string_array = cleaned_string.split(" ")

  puts string_array

  dict.reduce(Hash.new(0)) do |hash, value|
    string_array.each do |substring|
      if substring.include?(value)
        hash[value] += 1
      end
    end
    hash
  end
end

puts substrings("Howdy partner, sit down! How's it going", dictionary)
