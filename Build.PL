use 5.006;
use strict;
use warnings FATAL => 'all';
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'Math::KullbackLeibler::Discrete',
    license             => 'Artistic_2_0',
    dist_author         => q{Alberto Simoes <ambs@cpan.org>},
    dist_version_from   => 'lib/Math/KullbackLeibler/Discrete.pm',
    release_status      => 'stable',
    configure_requires => {
        'Module::Build' => 0,
    },
    build_requires => {
        'Test::More' => 0,
    },
    requires => {
                 'parent' => 0,
                 'Exporter' => 0,
    },
    add_to_cleanup     => [ 'Math-KullbackLeibler-Discrete-*' ],
);

$builder->create_build_script();
