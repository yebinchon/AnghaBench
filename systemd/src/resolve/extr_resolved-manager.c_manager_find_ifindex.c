
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef union in_addr_union {int dummy; } in_addr_union ;
struct TYPE_5__ {TYPE_1__* link; } ;
struct TYPE_4__ {int ifindex; } ;
typedef int Manager ;
typedef TYPE_2__ LinkAddress ;


 int assert (int *) ;
 TYPE_2__* manager_find_link_address (int *,int,union in_addr_union const*) ;

int manager_find_ifindex(Manager *m, int family, const union in_addr_union *in_addr) {
        LinkAddress *a;

        assert(m);

        a = manager_find_link_address(m, family, in_addr);
        if (a)
                return a->link->ifindex;

        return 0;
}
