use 5.005;
use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
WriteMakefile(
    'NAME'		=> 'Business::PhoneBill::Allopass',
    'VERSION_FROM'	=> 'Allopass.pm', # finds $VERSION
    'PREREQ_PM'		=> {
				HTTP::Request::Common => 1.0,
				LWP::UserAgent	=> 1.0,
				CGI::Cookie	=> 1.0,
				
			}, # e.g., Module::Name => 1.1
    ($] >= 5.005 ?    ## Add these new keywords supported since 5.005
      (ABSTRACT_FROM => 'Allopass.pm', # retrieve abstract from module
       AUTHOR     => 'Bernard Nauwelaerts <bpn@it-development.be>') : ()),
);
