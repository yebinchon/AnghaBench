
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef union lladdr_union {int dummy; } lladdr_union ;
typedef union in_addr_union {int dummy; } in_addr_union ;
struct TYPE_5__ {int neighbors_foreign; int neighbors; } ;
typedef int Neighbor ;
typedef TYPE_1__ Link ;


 int ENOENT ;
 int neighbor_add_internal (TYPE_1__*,int *,int,union in_addr_union const*,union lladdr_union const*,size_t,int **) ;
 int neighbor_get (TYPE_1__*,int,union in_addr_union const*,union lladdr_union const*,size_t,int **) ;
 int neighbor_hash_ops ;
 int set_ensure_allocated (int *,int *) ;
 int set_put (int ,int *) ;
 int set_remove (int ,int *) ;

int neighbor_add(Link *link, int family, const union in_addr_union *addr, const union lladdr_union *lladdr, size_t lladdr_size, Neighbor **ret) {
        Neighbor *neighbor;
        int r;

        r = neighbor_get(link, family, addr, lladdr, lladdr_size, &neighbor);
        if (r == -ENOENT) {

                r = neighbor_add_internal(link, &link->neighbors, family, addr, lladdr, lladdr_size, &neighbor);
                if (r < 0)
                        return r;
        } else if (r == 0) {

                r = set_ensure_allocated(&link->neighbors, &neighbor_hash_ops);
                if (r < 0)
                        return r;

                r = set_put(link->neighbors, neighbor);
                if (r < 0)
                        return r;

                set_remove(link->neighbors_foreign, neighbor);
        } else if (r == 1) {

        } else
                return r;

        if (ret)
                *ret = neighbor;
        return 0;
}
