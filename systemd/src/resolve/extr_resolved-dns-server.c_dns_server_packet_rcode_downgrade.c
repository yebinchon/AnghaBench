
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ verified_feature_level; scalar_t__ possible_feature_level; } ;
typedef scalar_t__ DnsServerFeatureLevel ;
typedef TYPE_1__ DnsServer ;


 int assert (TYPE_1__*) ;
 int dns_server_reset_counters (TYPE_1__*) ;
 int dns_server_string (TYPE_1__*) ;
 int log_debug (char*,int ) ;

void dns_server_packet_rcode_downgrade(DnsServer *s, DnsServerFeatureLevel level) {
        assert(s);





        if (s->verified_feature_level > level)
                s->verified_feature_level = level;

        if (s->possible_feature_level > level) {
                s->possible_feature_level = level;
                dns_server_reset_counters(s);
        }

        log_debug("Downgrading transaction feature level fixed an RCODE error, downgrading server %s too.", dns_server_string(s));
}
