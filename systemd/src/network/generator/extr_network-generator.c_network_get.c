
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int networks_by_name; } ;
typedef int Network ;
typedef TYPE_1__ Context ;


 int * hashmap_get (int ,char const*) ;

Network *network_get(Context *context, const char *ifname) {
        return hashmap_get(context->networks_by_name, ifname);
}
