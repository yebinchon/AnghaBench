
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int create_type; } ;
typedef int NetDevCreateType ;
typedef TYPE_1__ NetDev ;


 TYPE_1__* NETDEV_VTABLE (TYPE_1__*) ;
 int assert (TYPE_1__*) ;

__attribute__((used)) static inline NetDevCreateType netdev_get_create_type(NetDev *netdev) {
        assert(netdev);
        assert(NETDEV_VTABLE(netdev));

        return NETDEV_VTABLE(netdev)->create_type;
}
