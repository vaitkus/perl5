package HAS_OVERLOAD;
use strict;
use warnings;

our $loaded_count;

use overload
    '""'        => sub { ${$_[0]} }, fallback => 1;

sub make {
    my $package = shift;
    my $value = shift;
    bless \$value, $package;
}

++$loaded_count;

1;
