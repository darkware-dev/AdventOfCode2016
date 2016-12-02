#!/usr/bin/env perl

use warnings;
use strict;
use IO::File;

my $inputfile = shift;

my $input = new IO::File();
$input->open($inputfile, 'r')
    or die("Could not open input file: $input");

while (my $line = $input->getline)
{
    my @matches = $line =~ /([LR])(\d+),(\s+)/g;
    foreach my $match (@matches)
    {
        chomp($match);
        print $match . "\n";
    }
}
