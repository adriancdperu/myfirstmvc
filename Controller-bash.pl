#!/usr/bin/perl -w

######################## Controller ########################
# for the bash

use strict;
use warnings;

use Domain;          # preparing to call Model
use DomainManager;   # preparing to call Model

my $domain = Domain->load(.);
my @results = DomainManager->install($domain);

    for (@results) {
            # View
        if ($_ -> isError) {
            print "[ERROR]" . $_->getText . "\n";
            
            
            
        }else{
            print "[OK]" . $_->getText . "\n";    
        }
    }
    

    
