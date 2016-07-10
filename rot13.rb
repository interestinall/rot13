#rot13 encrypter / decrypter (takes array of strings, returns array of strings)

sample_array  = ["Jul", "qvq", "gur", "puvpxra", "pebff", "gur", "ebnq"]

def rot13(secret_messages)
  secret_messages.map do |word|
    word.split("").map do |letter|
      if letter.ord.between?(65,77) || letter.ord.between?(97,109)
        letter = (letter.ord + 13).chr
      elsif letter.ord.between?(78,90) || letter.ord.between?(110,122)
        letter = (letter.ord - 13).chr
      end
    end.join
  end
end

rot13(sample_array)
