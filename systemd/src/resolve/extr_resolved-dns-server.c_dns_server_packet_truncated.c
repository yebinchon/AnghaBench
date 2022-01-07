
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ possible_feature_level; int packet_truncated; } ;
typedef scalar_t__ DnsServerFeatureLevel ;
typedef TYPE_1__ DnsServer ;


 int assert (TYPE_1__*) ;

void dns_server_packet_truncated(DnsServer *s, DnsServerFeatureLevel level) {
        assert(s);



        if (s->possible_feature_level != level)
                return;

        s->packet_truncated = 1;
}
