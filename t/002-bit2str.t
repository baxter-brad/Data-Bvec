use Test::More tests => 1;

use Data::Bvec qw( set_bit bit2str );

POD: {

    my $vec = "";
    set_bit $vec, 4, 1;      #  00001000
    my $str = bit2str $vec;  # '00001000'

is( $str, '00001000', 'bit2str() POD' );

}
