
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int nexthops_foreign; } ;
typedef int NextHop ;
typedef TYPE_1__ Link ;


 int nexthop_add_internal (TYPE_1__*,int *,int *,int **) ;

int nexthop_add_foreign(Link *link, NextHop *in, NextHop **ret) {
        return nexthop_add_internal(link, &link->nexthops_foreign, in, ret);
}
