package Net::Amazon::EC2::ClassicLinkReservationInfo;
use Moose;

=head1 NAME

Net::Amazon::EC2::ClassicLinkReservationInfo

=head1 DESCRIPTION

A class representing information for instances that are EC2-Classic Link Enabled.

=head1 ATTRIBUTES

=over

=item reservation_id (required)

Unique ID attached to the reservation.

=item vpc_id (required)

AWS VPC Account id of the instance.

=item group_set

An array ref of Net::Amazon::EC2::GroupSet objects.

=item tag_set (required)

An array ref of Net::Amazon::EC2::TagSet objects.

=cut

has 'reservation_id' => ( is => 'ro', isa => 'Str', required => 1 );
has 'vpc_id'         => ( is => 'ro', isa => 'Str', required => 1 );
has 'group_set'      => (
    is         => 'ro',
    isa        => 'ArrayRef[Net::Amazon::EC2::GroupSet]',
    required   => 1,
    auto_deref => 1,
);
has 'tag_set' => (
    is         => 'ro',
    isa        => 'ArrayRef[Net::Amazon::EC2::TagSet]',
    required   => 1,
    auto_deref => 1,
);

__PACKAGE__->meta->make_immutable();

=back

=head1 AUTHOR

Matt West <https://github.com/mhwest13>

=head1 COPYRIGHT

Copyright (c) 2015 Matt West. This program is free software; you can redistribute it and/or modify it
under the same terms as Perl itself.

=cut

no Moose;
1;
