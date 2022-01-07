
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef union lladdr_union {int dummy; } lladdr_union ;
typedef union in_addr_union {int dummy; } in_addr_union ;
struct TYPE_4__ {int neighbors_foreign; } ;
typedef int Neighbor ;
typedef TYPE_1__ Link ;


 int neighbor_add_internal (TYPE_1__*,int *,int,union in_addr_union const*,union lladdr_union const*,size_t,int **) ;

int neighbor_add_foreign(Link *link, int family, const union in_addr_union *addr, const union lladdr_union *lladdr, size_t lladdr_size, Neighbor **ret) {
        return neighbor_add_internal(link, &link->neighbors_foreign, family, addr, lladdr, lladdr_size, ret);
}
