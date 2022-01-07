
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int allow_localremote; int ipv6_flowlabel; int ip6tnl_mode; int encap_limit; int ttl; } ;
typedef TYPE_1__ Tunnel ;
typedef TYPE_1__ NetDev ;


 int DEFAULT_TNL_HOP_LIMIT ;
 TYPE_1__* IP6TNL (TYPE_1__*) ;
 int IPV6_DEFAULT_TNL_ENCAP_LIMIT ;
 int _NETDEV_IP6_TNL_MODE_INVALID ;
 int _NETDEV_IPV6_FLOWLABEL_INVALID ;
 int assert (TYPE_1__*) ;

__attribute__((used)) static void ip6tnl_init(NetDev *n) {
        Tunnel *t = IP6TNL(n);

        assert(n);
        assert(t);

        t->ttl = DEFAULT_TNL_HOP_LIMIT;
        t->encap_limit = IPV6_DEFAULT_TNL_ENCAP_LIMIT;
        t->ip6tnl_mode = _NETDEV_IP6_TNL_MODE_INVALID;
        t->ipv6_flowlabel = _NETDEV_IPV6_FLOWLABEL_INVALID;
        t->allow_localremote = -1;
}
