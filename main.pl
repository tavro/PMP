#!/usr/bin/perl
use strict;
use warnings;

# Use strawberry instead or else this wont work
use Path::Tiny;

my $dir = path('music');
my $iter = $dir->iterator;

while(my $file = $iter->()) {
	next if $file->is_dir();
	print "$file\n";
}