
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int manager; scalar_t__ link; } ;
typedef TYPE_1__ DnsScope ;


 int AF_UNSPEC ;
 int manager_routable (int ,int ) ;

bool dns_scope_network_good(DnsScope *s) {




        if (s->link)
                return 1;

        return manager_routable(s->manager, AF_UNSPEC);
}
