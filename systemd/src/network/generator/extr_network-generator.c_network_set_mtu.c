
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mtu; } ;
typedef TYPE_1__ Network ;
typedef int Context ;


 int ENODEV ;
 TYPE_1__* network_get (int *,char const*) ;
 int parse_mtu (int,char const*,int *) ;

__attribute__((used)) static int network_set_mtu(Context *context, const char *ifname, int family, const char *mtu) {
        Network *network;

        network = network_get(context, ifname);
        if (!network)
                return -ENODEV;

        return parse_mtu(family, mtu, &network->mtu);
}
