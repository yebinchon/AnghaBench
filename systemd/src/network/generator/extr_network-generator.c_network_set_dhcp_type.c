
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ dhcp_type; } ;
typedef TYPE_1__ Network ;
typedef scalar_t__ DHCPType ;
typedef int Context ;


 int EINVAL ;
 scalar_t__ dracut_dhcp_type_from_string (char const*) ;
 TYPE_1__* network_get (int *,char const*) ;
 int network_new (int *,char const*,TYPE_1__**) ;

__attribute__((used)) static int network_set_dhcp_type(Context *context, const char *ifname, const char *dhcp_type) {
        Network *network;
        DHCPType t;
        int r;

        t = dracut_dhcp_type_from_string(dhcp_type);
        if (t < 0)
                return -EINVAL;

        network = network_get(context, ifname);
        if (!network) {
                r = network_new(context, ifname, &network);
                if (r < 0)
                        return r;
        }

        network->dhcp_type = t;
        return 0;
}
