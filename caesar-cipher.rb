def encrypt_string(string, shift)

  string_array = string.chars.map do |char|
    if char.match?(/[a-zA-Z]/)
      base = char.downcase == char ? 'a'.ord : 'A'.ord
      ((char.ord - base + shift) % 26 + base).chr
    else
      char
    end
  end

  encrypted_string = string_array.join("")
  puts encrypted_string
end

encrypt_string("Hello world!", 5)