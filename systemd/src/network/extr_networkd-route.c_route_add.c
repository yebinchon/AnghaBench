
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int routes_foreign; int routes; } ;
typedef int Route ;
typedef TYPE_1__ Link ;


 int ENOENT ;
 int route_add_internal (TYPE_1__*,int *,int *,int **) ;
 int route_get (TYPE_1__*,int *,int **) ;
 int route_hash_ops ;
 int set_ensure_allocated (int *,int *) ;
 int set_put (int ,int *) ;
 int set_remove (int ,int *) ;

int route_add(Link *link, Route *in, Route **ret) {

        Route *route;
        int r;

        r = route_get(link, in, &route);
        if (r == -ENOENT) {

                r = route_add_internal(link, &link->routes, in, &route);
                if (r < 0)
                        return r;
        } else if (r == 0) {

                r = set_ensure_allocated(&link->routes, &route_hash_ops);
                if (r < 0)
                        return r;

                r = set_put(link->routes, route);
                if (r < 0)
                        return r;

                set_remove(link->routes_foreign, route);
        } else if (r == 1) {

                ;
        } else
                return r;

        if (ret)
                *ret = route;

        return 0;
}
