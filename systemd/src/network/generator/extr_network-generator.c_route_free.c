
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__* network; } ;
struct TYPE_8__ {int routes; } ;
typedef TYPE_2__ Route ;


 int LIST_REMOVE (int ,int ,TYPE_2__*) ;
 TYPE_2__* mfree (TYPE_2__*) ;
 int routes ;

__attribute__((used)) static Route *route_free(Route *route) {
        if (!route)
                return ((void*)0);

        if (route->network)
                LIST_REMOVE(routes, route->network->routes, route);

        return mfree(route);
}
