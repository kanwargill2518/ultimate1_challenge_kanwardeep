]# Author: [Kanwardeep Gill]

# Read the subtotal from the user and convert it to a float
print "Enter the subtotal: $"
sub_total = gets.chomp.to_f

# Define PST and GST rates as constants
PST_RATE = 0.07
GST_RATE = 0.05

# Calculate PST and GST amounts
pst = sub_total * PST_RATE
gst = sub_total * GST_RATE

# Calculate grand total
grand_total = sub_total + pst + gst

# Print the breakdown of costs
puts "Subtotal: $#{sub_total}"
puts "PST: $#{pst} - #{(PST_RATE * 100).to_i}%"
puts "GST: $#{gst} - #{(GST_RATE * 100).to_i}%"
puts "Grand Total: $#{grand_total}"

# Print message based on grand total
if grand_total <= 5.00
  puts "Pocket Change"
elsif grand_total > 5.00 && grand_total < 20.00
  puts "Wallet Time"
else
  puts "Charge It!"
end
