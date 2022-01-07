
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int flags; } ;
typedef TYPE_1__ Wireguard ;
typedef TYPE_1__ NetDev ;


 int WGDEVICE_F_REPLACE_PEERS ;
 TYPE_1__* WIREGUARD (TYPE_1__*) ;
 int assert (TYPE_1__*) ;

__attribute__((used)) static void wireguard_init(NetDev *netdev) {
        Wireguard *w;

        assert(netdev);
        w = WIREGUARD(netdev);
        assert(w);

        w->flags = WGDEVICE_F_REPLACE_PEERS;
}
