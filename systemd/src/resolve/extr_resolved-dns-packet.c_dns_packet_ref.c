
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ n_ref; int on_stack; } ;
typedef TYPE_1__ DnsPacket ;


 int assert (int) ;

DnsPacket *dns_packet_ref(DnsPacket *p) {

        if (!p)
                return ((void*)0);

        assert(!p->on_stack);

        assert(p->n_ref > 0);
        p->n_ref++;
        return p;
}
