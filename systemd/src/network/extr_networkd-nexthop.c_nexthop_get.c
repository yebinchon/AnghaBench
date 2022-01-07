
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int nexthops_foreign; int nexthops; } ;
typedef TYPE_1__ NextHop ;
typedef TYPE_1__ Link ;


 int ENOENT ;
 int assert (TYPE_1__*) ;
 TYPE_1__* set_get (int ,TYPE_1__*) ;

int nexthop_get(Link *link, NextHop *in, NextHop **ret) {
        NextHop *existing;

        assert(link);
        assert(in);

        existing = set_get(link->nexthops, in);
        if (existing) {
                if (ret)
                        *ret = existing;
                return 1;
        }

        existing = set_get(link->nexthops_foreign, in);
        if (existing) {
                if (ret)
                        *ret = existing;
                return 0;
        }

        return -ENOENT;
}
