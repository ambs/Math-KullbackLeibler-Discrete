### NAME

Math::KullbackLeibler::Discrete - Computes Kullback-Leibler divergence
for two discrete distributes.

### SYNOPSIS

This module computes Kullback-Leibler divergence for two discrete
distributions, using smoothing.

        use Math::KullbackLeibler::Discrete;

        my $P = { a => 1/2, b => 1/4, c => 1/4 };
        my $Q = { a => 7/12, b => 2/12, d => 3/12 };

        my $kl = kl( $P, $Q );

        # optionally set the smoothing epsilon
        my $kl2 = kl( $P, $Q, epsilon => 0.0001 );

        # setting epsilon to 0 results in no smoothing.
        my $kl3 = kl( $P, $Q, epsilon => 0 );

### EXPORT

   * kl -- Computes smoothed KL.

     Receives two mandatory arguments: two anonymous hashrefs, that
     map events to their probabilities.

     Implementation based on the description presented at
     <http://www.cs.bgu.ac.il/~elhadad/nlp09/KL.html>.

     The smoothing amount can be specified as parameter:

       kl( $P, $Q, epsilon => 0.001 );

     This makes it possible to turn of smoothing, defined epsilon as zero.
     However, notice that this will lead to errors in case of divergent
     domains.

### AUTHOR

Alberto Simões, <ambs at cpan.org>

### BUGS

Please report any bugs or feature requests on
https://github.com/ambs/Math-KullbackLeibler-Discrete/issues

### SUPPORT

You can find documentation for this module with the perldoc command.

   * perldoc Math::KullbackLeibler::Discrete

You can also look for information at:

   * RT: CPAN's request tracker (report bugs here)

     <http://rt.cpan.org/NoAuth/Bugs.html?Dist=Math-KullbackLeibler-Discrete>

   * AnnoCPAN: Annotated CPAN documentation

     <http://annocpan.org/dist/Math-KullbackLeibler-Discrete>

   * CPAN Ratings

     <http://cpanratings.perl.org/d/Math-KullbackLeibler-Discrete>

   * Search CPAN

     <http://search.cpan.org/dist/Math-KullbackLeibler-Discrete/>

### ACKNOWLEDGEMENTS

Thanks to Michael Elhadad for making his lecture on-line, so I found a
nice and clean explanation of how this metric could be computed and
implemented.

### LICENSE AND COPYRIGHT

Copyright 2013-2014 Alberto Simões.

This program is free software; you can redistribute it and/or modify
it under the terms of the the Artistic License (2.0). You may obtain a
copy of the full license at:

<http://www.perlfoundation.org/artistic_license_2_0>

Any use, modification, and distribution of the Standard or Modified
Versions is governed by this Artistic License. By using, modifying or
distributing the Package, you accept this license. Do not use, modify,
or distribute the Package, if you do not accept this license.

If your Modified Version has been derived from a Modified Version made
by someone other than you, you are nevertheless required to ensure
that your Modified Version complies with the requirements of this
license.

This license does not grant you the right to use any trademark,
service mark, tradename, or logo of the Copyright Holder.

This license includes the non-exclusive, worldwide, free-of-charge
patent license to make, have made, use, offer to sell, sell, import
and otherwise transfer the Package with respect to any patent claims
licensable by the Copyright Holder that are necessarily infringed by
the Package. If you institute patent litigation (including a
cross-claim or counterclaim) against any party alleging that the
Package constitutes direct or contributory patent infringement, then
this Artistic License to you shall terminate on the date that such
litigation is filed.

Disclaimer of Warranty: THE PACKAGE IS PROVIDED BY THE COPYRIGHT
HOLDER AND CONTRIBUTORS "AS IS' AND WITHOUT ANY EXPRESS OR IMPLIED
WARRANTIES.  THE IMPLIED WARRANTIES OF MERCHANTABILITY, FITNESS FOR A
PARTICULAR PURPOSE, OR NON-INFRINGEMENT ARE DISCLAIMED TO THE EXTENT
PERMITTED BY YOUR LOCAL LAW. UNLESS REQUIRED BY LAW, NO COPYRIGHT
HOLDER OR CONTRIBUTOR WILL BE LIABLE FOR ANY DIRECT, INDIRECT,
INCIDENTAL, OR CONSEQUENTIAL DAMAGES ARISING IN ANY WAY OUT OF THE USE
OF THE PACKAGE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

