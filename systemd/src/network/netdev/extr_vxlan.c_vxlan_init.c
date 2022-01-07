
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int learning; int udpcsum; int udp6zerocsumtx; int udp6zerocsumrx; int df; scalar_t__ vni; } ;
typedef TYPE_1__ VxLan ;
typedef TYPE_1__ NetDev ;


 TYPE_1__* VXLAN (TYPE_1__*) ;
 scalar_t__ VXLAN_VID_MAX ;
 int _NETDEV_VXLAN_DF_INVALID ;
 int assert (TYPE_1__*) ;

__attribute__((used)) static void vxlan_init(NetDev *netdev) {
        VxLan *v;

        assert(netdev);

        v = VXLAN(netdev);

        assert(v);

        v->vni = VXLAN_VID_MAX + 1;
        v->df = _NETDEV_VXLAN_DF_INVALID;
        v->learning = 1;
        v->udpcsum = 0;
        v->udp6zerocsumtx = 0;
        v->udp6zerocsumrx = 0;
}
