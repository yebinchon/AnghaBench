
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ ifindex; TYPE_1__* link; } ;
struct TYPE_5__ {int ifindex; } ;
typedef TYPE_2__ DnsServer ;


 int assert (TYPE_2__ const*) ;

int dns_server_ifindex(const DnsServer *s) {
        assert(s);


        if (s->link)
                return s->link->ifindex;

        if (s->ifindex > 0)
                return s->ifindex;

        return 0;
}
