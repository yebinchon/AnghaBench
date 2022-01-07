
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int encrypt; } ;
typedef TYPE_1__ NetDev ;
typedef TYPE_1__ MACsec ;


 TYPE_1__* MACSEC (TYPE_1__*) ;
 int assert (TYPE_1__*) ;

__attribute__((used)) static void macsec_init(NetDev *netdev) {
        MACsec *v;

        assert(netdev);

        v = MACSEC(netdev);

        assert(v);

        v->encrypt = -1;
}
