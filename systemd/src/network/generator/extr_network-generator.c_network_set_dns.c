
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef union in_addr_union {int dummy; } in_addr_union ;
struct TYPE_4__ {int dns; } ;
typedef TYPE_1__ Network ;
typedef int Context ;


 int in_addr_from_string_auto (char const*,int*,union in_addr_union*) ;
 TYPE_1__* network_get (int *,char const*) ;
 int network_new (int *,char const*,TYPE_1__**) ;
 int strv_extend (int *,char const*) ;

__attribute__((used)) static int network_set_dns(Context *context, const char *ifname, const char *dns) {
        union in_addr_union a;
        Network *network;
        int family, r;

        r = in_addr_from_string_auto(dns, &family, &a);
        if (r < 0)
                return r;

        network = network_get(context, ifname);
        if (!network) {
                r = network_new(context, ifname, &network);
                if (r < 0)
                        return r;
        }

        return strv_extend(&network->dns, dns);
}
