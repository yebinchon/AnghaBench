
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int mac_peer; int ifname_peer; } ;
typedef TYPE_1__ Veth ;
typedef TYPE_1__ NetDev ;


 TYPE_1__* VETH (TYPE_1__*) ;
 int assert (TYPE_1__*) ;
 int free (int ) ;

__attribute__((used)) static void veth_done(NetDev *n) {
        Veth *v;

        assert(n);

        v = VETH(n);

        assert(v);

        free(v->ifname_peer);
        free(v->mac_peer);
}
