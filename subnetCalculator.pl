#!usr/bin/perl

use Net::IP;

my $rawIP;

print "What is your IP block?\n\n";
chomp($rawIP = <STDIN>);
my $ip = new Net::IP ($rawIP) or die (Net::IP::Error());
print ("\nIP : " .$ip->ip() . "\n");
print ("Last : " .$ip->last_ip() . "\n");
print ("Subnet Mask : " .$ip->mask() . "\n");
print ("Short : " .$ip->short() . "\n");
print ("Binary : " .$ip->binip() . "\n");
print ("Len : " .$ip->prefixlen() . "\n");
print ("Size : " .$ip->size() . "\n");
print ("Type : " .$ip->iptype() . "\n");
print ("Rev : " .$ip->reverse_ip() . "\n");
