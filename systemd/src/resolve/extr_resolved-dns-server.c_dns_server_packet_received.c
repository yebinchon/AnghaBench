
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {size_t received_udp_packet_max; scalar_t__ packet_bad_opt; scalar_t__ packet_rrsig_missing; scalar_t__ n_failed_tcp; scalar_t__ possible_feature_level; scalar_t__ n_failed_tls; scalar_t__ n_failed_udp; } ;
typedef scalar_t__ DnsServerFeatureLevel ;
typedef TYPE_1__ DnsServer ;


 scalar_t__ DNS_SERVER_FEATURE_LEVEL_DO ;
 scalar_t__ DNS_SERVER_FEATURE_LEVEL_EDNS0 ;
 scalar_t__ DNS_SERVER_FEATURE_LEVEL_IS_TLS (scalar_t__) ;
 scalar_t__ DNS_SERVER_FEATURE_LEVEL_LARGE ;
 scalar_t__ DNS_SERVER_FEATURE_LEVEL_TCP ;
 scalar_t__ DNS_SERVER_FEATURE_LEVEL_TLS_PLAIN ;
 int IPPROTO_TCP ;
 int IPPROTO_UDP ;
 int assert (TYPE_1__*) ;
 int dns_server_verified (TYPE_1__*,scalar_t__) ;

void dns_server_packet_received(DnsServer *s, int protocol, DnsServerFeatureLevel level, size_t size) {
        assert(s);

        if (protocol == IPPROTO_UDP) {
                if (s->possible_feature_level == level)
                        s->n_failed_udp = 0;
        } else if (protocol == IPPROTO_TCP) {
                if (DNS_SERVER_FEATURE_LEVEL_IS_TLS(level)) {
                        if (s->possible_feature_level == level)
                                s->n_failed_tls = 0;
                } else {
                        if (s->possible_feature_level == level)
                                s->n_failed_tcp = 0;


                        level = DNS_SERVER_FEATURE_LEVEL_TCP;
                }
        }


        if (s->packet_rrsig_missing && level >= DNS_SERVER_FEATURE_LEVEL_DO)
                level = DNS_SERVER_FEATURE_LEVEL_IS_TLS(level) ? DNS_SERVER_FEATURE_LEVEL_TLS_PLAIN : DNS_SERVER_FEATURE_LEVEL_EDNS0;


        if (s->packet_bad_opt && level >= DNS_SERVER_FEATURE_LEVEL_EDNS0)
                level = DNS_SERVER_FEATURE_LEVEL_EDNS0 - 1;



        if (level == DNS_SERVER_FEATURE_LEVEL_LARGE)
                level = DNS_SERVER_FEATURE_LEVEL_LARGE - 1;

        dns_server_verified(s, level);




        if (protocol == IPPROTO_UDP && s->received_udp_packet_max < size)
                s->received_udp_packet_max = size;
}
