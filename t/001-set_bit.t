use Test::More tests => 1;

use Data::Bvec qw( set_bit bit2str );

POD: {
    my $vec = "";  # empty vector

    set_bit $vec, 1, 1; # 01000000
    set_bit $vec, 2, 1; # 01100000
    set_bit $vec, 3;    # 01110000
    set_bit $vec, 1, 0; # 00110000

    is( bit2str( $vec ), '00110000', 'set_bit POD' );
}
