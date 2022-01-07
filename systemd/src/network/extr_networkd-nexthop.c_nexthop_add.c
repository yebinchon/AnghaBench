
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int nexthops_foreign; int nexthops; } ;
typedef int NextHop ;
typedef TYPE_1__ Link ;


 int ENOENT ;
 int nexthop_add_internal (TYPE_1__*,int *,int *,int **) ;
 int nexthop_get (TYPE_1__*,int *,int **) ;
 int nexthop_hash_ops ;
 int set_ensure_allocated (int *,int *) ;
 int set_put (int ,int *) ;
 int set_remove (int ,int *) ;

int nexthop_add(Link *link, NextHop *in, NextHop **ret) {
        NextHop *nexthop;
        int r;

        r = nexthop_get(link, in, &nexthop);
        if (r == -ENOENT) {

                r = nexthop_add_internal(link, &link->nexthops, in, &nexthop);
                if (r < 0)
                        return r;
        } else if (r == 0) {

                r = set_ensure_allocated(&link->nexthops, &nexthop_hash_ops);
                if (r < 0)
                        return r;

                r = set_put(link->nexthops, nexthop);
                if (r < 0)
                        return r;

                set_remove(link->nexthops_foreign, nexthop);
        } else if (r == 1) {

                ;
        } else
                return r;

        if (ret)
                *ret = nexthop;

        return 0;
}
