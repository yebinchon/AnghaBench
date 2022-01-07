
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ possible_feature_level; int n_failed_tcp; int n_failed_tls; int n_failed_udp; struct TYPE_4__* manager; } ;
typedef scalar_t__ DnsServerFeatureLevel ;
typedef TYPE_1__ DnsServer ;


 scalar_t__ DNS_SERVER_FEATURE_LEVEL_IS_TLS (scalar_t__) ;
 int IPPROTO_TCP ;
 int IPPROTO_UDP ;
 int assert (TYPE_1__*) ;

void dns_server_packet_lost(DnsServer *s, int protocol, DnsServerFeatureLevel level) {
        assert(s);
        assert(s->manager);

        if (s->possible_feature_level == level) {
                if (protocol == IPPROTO_UDP)
                        s->n_failed_udp++;
                else if (protocol == IPPROTO_TCP) {
                        if (DNS_SERVER_FEATURE_LEVEL_IS_TLS(level))
                                s->n_failed_tls++;
                        else
                                s->n_failed_tcp++;
                }
        }
}
