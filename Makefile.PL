use inc::Module::Install 1.01;

# DBIx::Class::Schema::ResultSetAccessors
name 'DBIx-Class-Schema-ResultSetAccessors';
perl_version 5.008001;
all_from 'lib/DBIx/Class/Schema/ResultSetAccessors.pm';

requires 'DBIx::Class' => 0;

test_requires 'Test::More' => '0.94';
test_requires 'Test::Exception';

if ($Module::Install::AUTHOR) {
    system("pod2text lib/DBIx/Class/Schema/ResultSetAccessors.pm > README");
}

realclean_files 'README';

auto_install;

resources repository =>
    'git://git.shadowcat.co.uk/dbsrgits/DBIx-Class-Schema-ResultSetAccessors.git';

WriteAll;
