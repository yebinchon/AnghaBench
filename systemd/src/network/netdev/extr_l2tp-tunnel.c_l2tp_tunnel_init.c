
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int udp6_csum_rx; int udp6_csum_tx; int l2tp_encap_type; } ;
typedef TYPE_1__ NetDev ;
typedef TYPE_1__ L2tpTunnel ;


 TYPE_1__* L2TP (TYPE_1__*) ;
 int NETDEV_L2TP_ENCAPTYPE_UDP ;
 int assert (TYPE_1__*) ;

__attribute__((used)) static void l2tp_tunnel_init(NetDev *netdev) {
        L2tpTunnel *t;

        assert(netdev);

        t = L2TP(netdev);

        assert(t);

        t->l2tp_encap_type = NETDEV_L2TP_ENCAPTYPE_UDP;
        t->udp6_csum_rx = 1;
        t->udp6_csum_tx = 1;
}
