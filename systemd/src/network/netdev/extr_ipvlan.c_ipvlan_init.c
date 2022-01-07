
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ kind; int flags; int mode; } ;
typedef TYPE_1__ NetDev ;
typedef TYPE_1__ IPVlan ;


 TYPE_1__* IPVLAN (TYPE_1__*) ;
 TYPE_1__* IPVTAP (TYPE_1__*) ;
 scalar_t__ NETDEV_KIND_IPVLAN ;
 int _NETDEV_IPVLAN_FLAGS_INVALID ;
 int _NETDEV_IPVLAN_MODE_INVALID ;
 int assert (TYPE_1__*) ;

__attribute__((used)) static void ipvlan_init(NetDev *n) {
        IPVlan *m;

        assert(n);

        if (n->kind == NETDEV_KIND_IPVLAN)
                m = IPVLAN(n);
        else
                m = IPVTAP(n);

        assert(m);

        m->mode = _NETDEV_IPVLAN_MODE_INVALID;
        m->flags = _NETDEV_IPVLAN_FLAGS_INVALID;
}
