#!/usr/bin/env perl -w
use strict;
use Test;
BEGIN { plan tests => 2 }

use Billing::Allopass;
my $session_file='apsession.tmp';

my $allopass=''; $allopass=Billing::Allopass->new($session_file);
if ($allopass){
    ok(1);
} else {
    ok(0);
}
ok(unlink($session_file));

exit;
__END__