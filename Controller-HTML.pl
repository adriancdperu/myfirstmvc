#!/usr/bin/perl -w

######################## Controller ########################
# gives HTML

use strict;
use warnings;

use Domain;          # preparing to call Model
use DomainManager;   # preparing to call Model

my $domain = Domain->load(.);
my @results = DomainManager->install($domain);

print "Content-type: text/html\n\n";
print "<html><body>";
print "<head></head>";

    for (@results) {
            # View
        if ($_ -> isError) {
            print "<div style='color:red'>" . $_->getText . "</div>";
        }else{
            print "<div style='color:green'>" . $_->getText . "</div>";    
        }
    }
    

    


