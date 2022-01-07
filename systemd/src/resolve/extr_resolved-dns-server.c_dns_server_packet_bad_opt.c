
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ verified_feature_level; int packet_bad_opt; } ;
typedef scalar_t__ DnsServerFeatureLevel ;
typedef TYPE_1__ DnsServer ;


 scalar_t__ DNS_SERVER_FEATURE_LEVEL_EDNS0 ;
 int assert (TYPE_1__*) ;

void dns_server_packet_bad_opt(DnsServer *s, DnsServerFeatureLevel level) {
        assert(s);

        if (level < DNS_SERVER_FEATURE_LEVEL_EDNS0)
                return;


        if (s->verified_feature_level >= DNS_SERVER_FEATURE_LEVEL_EDNS0)
                s->verified_feature_level = DNS_SERVER_FEATURE_LEVEL_EDNS0-1;

        s->packet_bad_opt = 1;
}
