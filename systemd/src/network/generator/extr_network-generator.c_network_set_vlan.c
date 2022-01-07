
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int vlan; } ;
typedef TYPE_1__ Network ;
typedef int Context ;


 int free_and_strdup (int *,char const*) ;
 TYPE_1__* network_get (int *,char const*) ;
 int network_new (int *,char const*,TYPE_1__**) ;

__attribute__((used)) static int network_set_vlan(Context *context, const char *ifname, const char *value) {
        Network *network;
        int r;

        network = network_get(context, ifname);
        if (!network) {
                r = network_new(context, ifname, &network);
                if (r < 0)
                        return r;
        }

        return free_and_strdup(&network->vlan, value);
}
