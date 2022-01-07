
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int links_by_name; int netdevs_by_name; int networks_by_name; } ;
typedef TYPE_1__ Context ;


 int hashmap_free_with_destructor (int ,int ) ;
 int link_free ;
 int netdev_free ;
 int network_free ;

void context_clear(Context *context) {
        if (!context)
                return;

        hashmap_free_with_destructor(context->networks_by_name, network_free);
        hashmap_free_with_destructor(context->netdevs_by_name, netdev_free);
        hashmap_free_with_destructor(context->links_by_name, link_free);
}
