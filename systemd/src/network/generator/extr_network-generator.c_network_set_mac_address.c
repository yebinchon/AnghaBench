
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mac; } ;
typedef TYPE_1__ Network ;
typedef int Context ;


 int ENODEV ;
 int ether_addr_from_string (char const*,int *) ;
 TYPE_1__* network_get (int *,char const*) ;

__attribute__((used)) static int network_set_mac_address(Context *context, const char *ifname, const char *mac) {
        Network *network;

        network = network_get(context, ifname);
        if (!network)
                return -ENODEV;

        return ether_addr_from_string(mac, &network->mac);
}
