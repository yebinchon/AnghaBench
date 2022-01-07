
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ verified_feature_level; int packet_rrsig_missing; } ;
typedef scalar_t__ DnsServerFeatureLevel ;
typedef TYPE_1__ DnsServer ;


 scalar_t__ DNS_SERVER_FEATURE_LEVEL_DO ;
 scalar_t__ DNS_SERVER_FEATURE_LEVEL_EDNS0 ;
 scalar_t__ DNS_SERVER_FEATURE_LEVEL_IS_TLS (scalar_t__) ;
 scalar_t__ DNS_SERVER_FEATURE_LEVEL_TLS_PLAIN ;
 int assert (TYPE_1__*) ;

void dns_server_packet_rrsig_missing(DnsServer *s, DnsServerFeatureLevel level) {
        assert(s);

        if (level < DNS_SERVER_FEATURE_LEVEL_DO)
                return;


        if (s->verified_feature_level >= DNS_SERVER_FEATURE_LEVEL_DO)
                s->verified_feature_level = DNS_SERVER_FEATURE_LEVEL_IS_TLS(level) ? DNS_SERVER_FEATURE_LEVEL_TLS_PLAIN : DNS_SERVER_FEATURE_LEVEL_EDNS0;

        s->packet_rrsig_missing = 1;
}
