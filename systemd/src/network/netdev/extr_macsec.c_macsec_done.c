
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int receive_associations_by_section; int transmit_associations_by_section; int receive_channels_by_section; int receive_channels; } ;
typedef TYPE_1__ NetDev ;
typedef TYPE_1__ MACsec ;


 TYPE_1__* MACSEC (TYPE_1__*) ;
 int assert (TYPE_1__*) ;
 int macsec_receive_association_free ;
 int macsec_receive_channel_free ;
 int macsec_transmit_association_free ;
 int ordered_hashmap_free_with_destructor (int ,int ) ;

__attribute__((used)) static void macsec_done(NetDev *netdev) {
        MACsec *t;

        assert(netdev);

        t = MACSEC(netdev);

        assert(t);

        ordered_hashmap_free_with_destructor(t->receive_channels, macsec_receive_channel_free);
        ordered_hashmap_free_with_destructor(t->receive_channels_by_section, macsec_receive_channel_free);
        ordered_hashmap_free_with_destructor(t->transmit_associations_by_section, macsec_transmit_association_free);
        ordered_hashmap_free_with_destructor(t->receive_associations_by_section, macsec_receive_association_free);
}
