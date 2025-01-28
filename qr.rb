# Write your solution here!
require "rqrcode"

# Use the .as_png method to create a 500 pixels by 500 pixels image
#png = qrcode.as_png({ :size => 500 })

# Write the image data to a file
#IO.binwrite("sometext.png", png.to_s)

# WIFI:T:WPA;S:My wifi network;P:supersecretpassword;;

# SMSTO:9876543210:Hi Alice! It's

puts "Type the corresponding number for the qr code you want:\n" + "1: Website\n" + "2: Wifi\n" + "3: SMS\n" + "4: Exit" 

resp = gets.chomp
pp resp

if resp = 1
  puts "Type the URL Below."
  website = gets.chomp
  qrcode = RQRCode::QRCode.new(website.to_s)
  png = qrcode.as_png({ :size => 500 })
  puts "Name the png file."
  filename = gets.chomp
  IO.binwrite(filename.to_s + ".png", png.to_s)
  puts "Here you go!"
end
