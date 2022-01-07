
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int * mdns_ipv6_scope; int * mdns_ipv4_scope; int * llmnr_ipv6_scope; int * llmnr_ipv4_scope; } ;
struct TYPE_8__ {int protocol; int family; int ifindex; int links; } ;
typedef TYPE_1__ Manager ;
typedef TYPE_2__ Link ;
typedef int DnsScope ;
typedef TYPE_1__ DnsPacket ;


 int AF_INET ;
 int AF_INET6 ;


 int INT_TO_PTR (int ) ;
 int assert (TYPE_1__*) ;
 TYPE_2__* hashmap_get (int ,int ) ;

DnsScope* manager_find_scope(Manager *m, DnsPacket *p) {
        Link *l;

        assert(m);
        assert(p);

        l = hashmap_get(m->links, INT_TO_PTR(p->ifindex));
        if (!l)
                return ((void*)0);

        switch (p->protocol) {
        case 129:
                if (p->family == AF_INET)
                        return l->llmnr_ipv4_scope;
                else if (p->family == AF_INET6)
                        return l->llmnr_ipv6_scope;

                break;

        case 128:
                if (p->family == AF_INET)
                        return l->mdns_ipv4_scope;
                else if (p->family == AF_INET6)
                        return l->mdns_ipv6_scope;

                break;

        default:
                break;
        }

        return ((void*)0);
}
