## no critic (RequireUseStrict)
package Tapper::TestSuite::HWTrack;
# git description: v4.0.1-2-g3cc4433

BEGIN {
  $Tapper::TestSuite::HWTrack::AUTHORITY = 'cpan:AMD';
}
{
  $Tapper::TestSuite::HWTrack::VERSION = '4.1.0';
}
# ABSTRACT: Tapper - Report hardware meta information

        use 5.010;
        use Moose;

        use aliased 'Tapper::TestSuite::HWTrack::Prepare';
        use aliased 'Tapper::TestSuite::HWTrack::Execute';
        has 'exec' => ( is => 'ro', isa => Execute, handles => [qw( generate send gen_error )], default => sub { Execute->new }, );

1;


__END__
=pod

=encoding utf-8

=head1 NAME

Tapper::TestSuite::HWTrack - Tapper - Report hardware meta information

=head1 ABOUT

HWTrack calls the tool lshw, parses its input and sends it to the
report framework.

=head1 AUTHOR

AMD OSRC Tapper Team <tapper@amd64.org>

=head1 COPYRIGHT AND LICENSE

This software is Copyright (c) 2012 by Advanced Micro Devices, Inc..

This is free software, licensed under:

  The (two-clause) FreeBSD License

=cut

