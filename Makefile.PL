
use 5.006;
use ExtUtils::MakeMaker;

my $EUMM_VERSION = eval $ExtUtils::MakeMaker::VERSION;

WriteMakefile(
    NAME => 'Shell::Perl',
    VERSION_FROM => 'lib/Shell/Perl.pm',
    PREREQ_PM => {
        Term::ReadLine  => 0,
        File::Basename  => 0,
        Class::Accessor => 0,
        Getopt::Long    => 0,

		  File::Slurp => 0,
		  File::HomeDir => 0,
		  Path::Class => 0,

        # test requires
        'Test::More'      => 0,
        'Test::Deep'      => 0,
        'IPC::Cmd'        => 0,

    },
    EXE_FILES => [ 'bin/pirl' ],

    ($] >= 5.005 ? (
        ABSTRACT_FROM  => 'lib/Shell/Perl.pm', 
        AUTHOR         => 'A. R. Ferreira <ferreira@cpan.org>',
    ) : ()),
    ($EUMM_VERSION >= 6.31 ? (
        LICENSE => 'perl', 
    ) : ()),

);

# recommended:
#
#   - -one_of: [ YAML::Syck, YAML ]
#   - Data::Dump
#   - Data::Dumper
#   - Data::Dump::Streamer
#
#   - Test::Pod 
#   - Test::Pod::Coverage
#   - Test::Script
#   - Test::Expect
