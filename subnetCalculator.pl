#!usr/bin/perl

use Net::IP;
use NetAddr::IP;

my $rawIP;

print "What is your IP?\n\n";
chomp($rawIP = <STDIN>);
my $ip = new Net::IP ($rawIP) or die (Net::IP::Error());
print ("IP : ".$ip->ip()."\n\n");
print ("Subnet mask : ".$ip->mask()."\n\n");

my $ip = new NetAddr::IP($rawIP);
while ($ip < $ip->broadcast) {
  print "IP = $ip\n";
  $ip ++;
}
