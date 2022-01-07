
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int packet_bad_opt; int packet_rrsig_missing; int warned_downgrade; int features_grace_period_usec; int received_udp_packet_max; int possible_feature_level; int verified_feature_level; } ;
typedef TYPE_1__ DnsServer ;


 int DNS_PACKET_UNICAST_SIZE_MAX ;
 int DNS_SERVER_FEATURE_GRACE_PERIOD_MIN_USEC ;
 int DNS_SERVER_FEATURE_LEVEL_BEST ;
 int _DNS_SERVER_FEATURE_LEVEL_INVALID ;
 int assert (TYPE_1__*) ;
 int dns_server_reset_counters (TYPE_1__*) ;
 int dns_server_unref_stream (TYPE_1__*) ;

void dns_server_reset_features(DnsServer *s) {
        assert(s);

        s->verified_feature_level = _DNS_SERVER_FEATURE_LEVEL_INVALID;
        s->possible_feature_level = DNS_SERVER_FEATURE_LEVEL_BEST;

        s->received_udp_packet_max = DNS_PACKET_UNICAST_SIZE_MAX;

        s->packet_bad_opt = 0;
        s->packet_rrsig_missing = 0;

        s->features_grace_period_usec = DNS_SERVER_FEATURE_GRACE_PERIOD_MIN_USEC;

        s->warned_downgrade = 0;

        dns_server_reset_counters(s);


        dns_server_unref_stream(s);
}
