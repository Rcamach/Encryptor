class Encryptor
  def cipher


   {'A' => 'N',
    'B' => 'O',
    'C' => 'P',
    'D' => 'Q',
    'E' => 'R',
    'F' => 'S',
    'G' => 'T',
    'H' => 'U',
    'I' => 'V',
    'J' => 'W',
    'K' => 'X',
    'L' => 'Y',
    'M' => 'Z',
    'N' => 'A',
    'O' => 'B',
    'P' => 'C',
    'Q' => 'D',
    'R' => 'E',
    'S' => 'F',
    'T' => 'G',
    'U' => 'H',
    'V' => 'I',
    'W' => 'J',
    'X' => 'K',
    'Y' => 'L',
    'Z' => 'M'}
  end

  def encrypt (letter)
    cipher[letter.upcase]
  end

  def encrypt_word(string)
    results = []
    letters = string.split("")
    letters.each do |letter|
    results << encrypt(letter)
    end
    string = results.join
  end

  def encrypt_file (file)
    new_file = File.open(file, "r+")
    encrypted_file = encrypt_word(new_file.read)
    new_file.close
    other_file = File.open(file + ".encrypted", "w+")
    other_file.write(encrypted_file)
    other_file.close

  end
end
e = Encryptor.new

puts e.encrypt_word("hello")

e.encrypt_file("secret-message.txt")
