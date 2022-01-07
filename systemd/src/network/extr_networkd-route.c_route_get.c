
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int routes_foreign; int routes; } ;
typedef TYPE_1__ Route ;
typedef TYPE_1__ Link ;


 int ENOENT ;
 int assert (TYPE_1__*) ;
 TYPE_1__* set_get (int ,TYPE_1__*) ;

int route_get(Link *link, Route *in, Route **ret) {

        Route *existing;

        assert(link);
        assert(in);

        existing = set_get(link->routes, in);
        if (existing) {
                if (ret)
                        *ret = existing;
                return 1;
        }

        existing = set_get(link->routes_foreign, in);
        if (existing) {
                if (ret)
                        *ret = existing;
                return 0;
        }

        return -ENOENT;
}
