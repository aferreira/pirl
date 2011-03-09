
use Test::More tests => 8;

my @pirl = ( $^X, '-Mblib', 'blib/script/pirl' );

use IPC::Cmd qw( run );
use Test::Deep;

for my $switch ( '-v', '--version' ) {
    my ( $ok, $err, $full_buf, $out_buf, $err_buf )  = run( command => [ @pirl, $switch ] );
    ok( $ok, "'pirl $switch' run ok" );
    ok( !$err, 'no error');
    cmp_deeply( $out_buf, [ re(qr/\AThis is pirl/) ], 'printed version info' );
    cmp_deeply( $err_buf, [], 'no output to STDERR' );
}
