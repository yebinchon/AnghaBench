
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dhcp_use_dns; } ;
typedef TYPE_1__ Network ;
typedef int Context ;


 TYPE_1__* network_get (int *,char const*) ;
 int network_new (int *,char const*,TYPE_1__**) ;

__attribute__((used)) static int network_set_dhcp_use_dns(Context *context, const char *ifname, bool value) {
        Network *network;
        int r;

        network = network_get(context, ifname);
        if (!network) {
                r = network_new(context, ifname, &network);
                if (r < 0)
                        return r;
        }

        network->dhcp_use_dns = value;

        return 0;
}
