use inc::Module::Install;

name     'Net-Google-PicasaWeb';
all_from 'lib/Net/Google/PicasaWeb.pm';
author   'Andrew Sterling Hanenkamp <hanenkamp@cpan.org>';

build_requires 'Test::More';
build_requires 'Test::Mock::LWP';

requires 'IO::Prompt';
requires 'LWP::UserAgent';
requires 'Moose';
requires 'MooseX::Role::Matcher';
requires 'Net::Google::AuthSub';
requires 'URI';
requires 'XML::Twig'             => '3.30'; # added fields method

install_script 'script/picasa';
install_script 'script/picasa-get';
install_script 'script/picasa-list';

auto_install;

WriteAll;

