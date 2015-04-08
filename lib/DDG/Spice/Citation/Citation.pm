package DDG::Spice::Citation;

use strict;
use utf8;
use DDG::Spice;

primary_example_queries "citation";
secondary_example_queries "cite", "easybib";
description "Create citations for academic works";
name "Citation";
source "http:/easybib.com";
code_url "https://github.com/jakenherman/zeroclickinfo-spice/blob/master/lib/DDG/Spice/citation.pm";
topics "Education";
category "Citations";

attribution github => ['https://github.com/jakenherman','Jaken Chandler Herman'],
            email => ['JakenHerman7@Gmail.com','Jaken Chandler Herman'];

spice to => 'http://api.easybib.com/2.0/rest/cite';
spice wrap_jsonp_callback => 1;
spice proxy_cache_valid => "418 1d";

triggers start => "cite", "easybib";
triggers startend => "cite", "citation", "bibliography", "easybib";

handle remainder => sub {
    return $_;
};

1;
