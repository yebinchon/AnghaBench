
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int arp_ip_targets; } ;
typedef TYPE_1__ NetDev ;
typedef TYPE_1__ Bond ;


 TYPE_1__* BOND (TYPE_1__*) ;
 int assert (TYPE_1__*) ;
 int ordered_set_free (int ) ;

__attribute__((used)) static void bond_done(NetDev *netdev) {
        Bond *b;

        assert(netdev);
        b = BOND(netdev);
        assert(b);

        ordered_set_free(b->arp_ip_targets);
}
