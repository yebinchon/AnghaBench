
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* link; } ;
struct TYPE_5__ {int ifindex; } ;
typedef TYPE_2__ DnsScope ;


 int assert (TYPE_2__*) ;

int dns_scope_ifindex(DnsScope *s) {
        assert(s);

        if (s->link)
                return s->link->ifindex;

        return 0;
}
