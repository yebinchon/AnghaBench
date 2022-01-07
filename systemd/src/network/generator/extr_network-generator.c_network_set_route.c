
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union in_addr_union {int dummy; } in_addr_union ;
typedef int Network ;
typedef int Context ;


 scalar_t__ in_addr_is_null (int,union in_addr_union*) ;
 int * network_get (int *,char const*) ;
 int network_new (int *,char const*,int **) ;
 int route_new (int *,int,unsigned char,union in_addr_union*,union in_addr_union*,int *) ;

__attribute__((used)) static int network_set_route(Context *context, const char *ifname, int family, unsigned char prefixlen,
                             union in_addr_union *dest, union in_addr_union *gateway) {
        Network *network;
        int r;

        if (in_addr_is_null(family, gateway) != 0)
                return 0;

        network = network_get(context, ifname);
        if (!network) {
                r = network_new(context, ifname, &network);
                if (r < 0)
                        return r;
        }

        return route_new(network, family, prefixlen, dest, gateway, ((void*)0));
}
