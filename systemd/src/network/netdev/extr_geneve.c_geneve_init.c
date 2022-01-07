
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int udpcsum; int udp6zerocsumtx; int udp6zerocsumrx; int dest_port; int geneve_df; scalar_t__ id; } ;
typedef TYPE_1__ NetDev ;
typedef TYPE_1__ Geneve ;


 int DEFAULT_GENEVE_DESTINATION_PORT ;
 TYPE_1__* GENEVE (TYPE_1__*) ;
 scalar_t__ GENEVE_VID_MAX ;
 int _NETDEV_GENEVE_DF_INVALID ;
 int assert (TYPE_1__*) ;

__attribute__((used)) static void geneve_init(NetDev *netdev) {
        Geneve *v;

        assert(netdev);

        v = GENEVE(netdev);

        assert(v);

        v->id = GENEVE_VID_MAX + 1;
        v->geneve_df = _NETDEV_GENEVE_DF_INVALID;
        v->dest_port = DEFAULT_GENEVE_DESTINATION_PORT;
        v->udpcsum = 0;
        v->udp6zerocsumtx = 0;
        v->udp6zerocsumrx = 0;
}
