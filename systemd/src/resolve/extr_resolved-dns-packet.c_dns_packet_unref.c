
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ n_ref; struct TYPE_5__* more; } ;
typedef TYPE_1__ DnsPacket ;


 int assert (int) ;
 int dns_packet_free (TYPE_1__*) ;

DnsPacket *dns_packet_unref(DnsPacket *p) {
        if (!p)
                return ((void*)0);

        assert(p->n_ref > 0);

        dns_packet_unref(p->more);

        if (p->n_ref == 1)
                dns_packet_free(p);
        else
                p->n_ref--;

        return ((void*)0);
}
