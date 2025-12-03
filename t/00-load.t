#!/usr/bin/perl

# This file is part of Koha.
#
# Koha is free software; you can redistribute it and/or modify it
# under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 3 of the License, or
# (at your option) any later version.
#
# Koha is distributed in the hope that it will be useful, but
# WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with Koha; if not, see <http://www.gnu.org/licenses>.

use Modern::Perl;
use Test::More;
use FindBin;

# Add the plugin repo itself to @INC
# t/ is next to Koha/, so ".." is the plugin root
use lib "$FindBin::Bin/..";

# Koha libs (paths used inside KTD containers)
use lib '/kohadevbox/koha/';
use lib '/kohadevbox/koha/misc/translator/';
use lib '/kohadevbox/koha/t/lib/';

my $module = 'Koha::Plugin::Com::ByWaterSolutions::OpacThemeChildrens';

use_ok($module) or BAIL_OUT("***** PROBLEMS LOADING FILE '$module'");

done_testing();
