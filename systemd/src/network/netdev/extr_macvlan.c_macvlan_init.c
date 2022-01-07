
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ kind; int mode; } ;
typedef TYPE_1__ NetDev ;
typedef TYPE_1__ MacVlan ;


 TYPE_1__* MACVLAN (TYPE_1__*) ;
 TYPE_1__* MACVTAP (TYPE_1__*) ;
 scalar_t__ NETDEV_KIND_MACVLAN ;
 int _NETDEV_MACVLAN_MODE_INVALID ;
 int assert (TYPE_1__*) ;

__attribute__((used)) static void macvlan_init(NetDev *n) {
        MacVlan *m;

        assert(n);

        if (n->kind == NETDEV_KIND_MACVLAN)
                m = MACVLAN(n);
        else
                m = MACVTAP(n);

        assert(m);

        m->mode = _NETDEV_MACVLAN_MODE_INVALID;
}
