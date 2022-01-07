
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int fou_encap_type; } ;
typedef TYPE_1__ NetDev ;
typedef TYPE_1__ FouTunnel ;


 TYPE_1__* FOU (TYPE_1__*) ;
 int NETDEV_FOO_OVER_UDP_ENCAP_DIRECT ;
 int assert (TYPE_1__*) ;

__attribute__((used)) static void fou_tunnel_init(NetDev *netdev) {
        FouTunnel *t;

        assert(netdev);

        t = FOU(netdev);

        assert(t);

        t->fou_encap_type = NETDEV_FOO_OVER_UDP_ENCAP_DIRECT;
}
