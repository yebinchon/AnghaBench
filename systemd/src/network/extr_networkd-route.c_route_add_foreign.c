
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int routes_foreign; } ;
typedef int Route ;
typedef TYPE_1__ Link ;


 int route_add_internal (TYPE_1__*,int *,int *,int **) ;

int route_add_foreign(Link *link, Route *in, Route **ret) {
        return route_add_internal(link, &link->routes_foreign, in, ret);
}
