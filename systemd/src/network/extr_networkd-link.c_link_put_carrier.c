
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int ifindex; } ;
typedef TYPE_1__ Link ;
typedef int Hashmap ;


 int INT_TO_PTR (int ) ;
 int assert (TYPE_1__*) ;
 int hashmap_ensure_allocated (int **,int *) ;
 scalar_t__ hashmap_get (int *,int ) ;
 int hashmap_put (int *,int ,TYPE_1__*) ;

__attribute__((used)) static int link_put_carrier(Link *link, Link *carrier, Hashmap **h) {
        int r;

        assert(link);
        assert(carrier);

        if (link == carrier)
                return 0;

        if (hashmap_get(*h, INT_TO_PTR(carrier->ifindex)))
                return 0;

        r = hashmap_ensure_allocated(h, ((void*)0));
        if (r < 0)
                return r;

        r = hashmap_put(*h, INT_TO_PTR(carrier->ifindex), carrier);
        if (r < 0)
                return r;

        return 0;
}
