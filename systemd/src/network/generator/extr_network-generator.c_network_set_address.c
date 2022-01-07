
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union in_addr_union {int dummy; } in_addr_union ;
typedef int Network ;
typedef int Context ;


 int ENODEV ;
 int address_new (int *,int,unsigned char,union in_addr_union*,union in_addr_union*,int *) ;
 scalar_t__ in_addr_is_null (int,union in_addr_union*) ;
 int * network_get (int *,char const*) ;

__attribute__((used)) static int network_set_address(Context *context, const char *ifname, int family, unsigned char prefixlen,
                               union in_addr_union *addr, union in_addr_union *peer) {
        Network *network;

        if (in_addr_is_null(family, addr) != 0)
                return 0;

        network = network_get(context, ifname);
        if (!network)
                return -ENODEV;

        return address_new(network, family, prefixlen, addr, peer, ((void*)0));
}
