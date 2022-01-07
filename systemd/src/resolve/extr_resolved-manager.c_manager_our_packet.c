
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int sender; int family; } ;
typedef TYPE_1__ Manager ;
typedef TYPE_1__ DnsPacket ;


 int assert (TYPE_1__*) ;
 int manager_find_link_address (TYPE_1__*,int ,int *) ;

bool manager_our_packet(Manager *m, DnsPacket *p) {
        assert(m);
        assert(p);

        return !!manager_find_link_address(m, p->family, &p->sender);
}
