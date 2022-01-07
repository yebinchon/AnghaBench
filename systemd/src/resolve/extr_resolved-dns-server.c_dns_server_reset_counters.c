
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int packet_truncated; scalar_t__ verified_usec; scalar_t__ n_failed_tls; scalar_t__ n_failed_tcp; scalar_t__ n_failed_udp; } ;
typedef TYPE_1__ DnsServer ;


 int assert (TYPE_1__*) ;

__attribute__((used)) static void dns_server_reset_counters(DnsServer *s) {
        assert(s);

        s->n_failed_udp = 0;
        s->n_failed_tcp = 0;
        s->n_failed_tls = 0;
        s->packet_truncated = 0;
        s->verified_usec = 0;
}
