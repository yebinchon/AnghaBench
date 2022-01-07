
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int mcast_querier; int mcast_snooping; int vlan_filtering; int stp; void* ageing_time; void* forward_delay; int default_pvid; } ;
typedef int NetDev ;
typedef TYPE_1__ Bridge ;


 TYPE_1__* BRIDGE (int *) ;
 void* USEC_INFINITY ;
 int VLANID_INVALID ;
 int assert (TYPE_1__*) ;

__attribute__((used)) static void bridge_init(NetDev *n) {
        Bridge *b;

        b = BRIDGE(n);

        assert(b);

        b->mcast_querier = -1;
        b->mcast_snooping = -1;
        b->vlan_filtering = -1;
        b->stp = -1;
        b->default_pvid = VLANID_INVALID;
        b->forward_delay = USEC_INFINITY;
        b->ageing_time = USEC_INFINITY;
}
