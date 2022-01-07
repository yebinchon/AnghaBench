
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int gvrp; int mvrp; int loose_binding; int reorder_hdr; int id; } ;
typedef TYPE_1__ VLan ;
typedef TYPE_1__ NetDev ;


 TYPE_1__* VLAN (TYPE_1__*) ;
 int VLANID_INVALID ;
 int assert (TYPE_1__*) ;

__attribute__((used)) static void vlan_init(NetDev *netdev) {
        VLan *v = VLAN(netdev);

        assert(netdev);
        assert(v);

        v->id = VLANID_INVALID;
        v->gvrp = -1;
        v->mvrp = -1;
        v->loose_binding = -1;
        v->reorder_hdr = -1;
}
