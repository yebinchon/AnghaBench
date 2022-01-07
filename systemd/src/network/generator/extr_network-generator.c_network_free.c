
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * routes; int * addresses; int bond; int bridge; int vlan; int dns; int hostname; int ifname; } ;
typedef int Route ;
typedef TYPE_1__ Network ;
typedef int Address ;


 int address_free (int *) ;
 int free (int ) ;
 TYPE_1__* mfree (TYPE_1__*) ;
 int route_free (int *) ;
 int strv_free (int ) ;

__attribute__((used)) static Network *network_free(Network *network) {
        Address *address;
        Route *route;

        if (!network)
                return ((void*)0);

        free(network->ifname);
        free(network->hostname);
        strv_free(network->dns);
        free(network->vlan);
        free(network->bridge);
        free(network->bond);

        while ((address = network->addresses))
                address_free(address);

        while ((route = network->routes))
                route_free(route);

        return mfree(network);
}
