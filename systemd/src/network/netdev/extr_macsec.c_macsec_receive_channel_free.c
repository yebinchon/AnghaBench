
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ as_uint64; } ;
struct TYPE_8__ {scalar_t__* section; TYPE_2__* macsec; TYPE_1__ sci; } ;
struct TYPE_7__ {int receive_channels_by_section; int receive_channels; } ;
typedef TYPE_3__ ReceiveChannel ;


 int free (TYPE_3__*) ;
 int network_config_section_free (scalar_t__*) ;
 int ordered_hashmap_remove (int ,scalar_t__*) ;

__attribute__((used)) static void macsec_receive_channel_free(ReceiveChannel *c) {
        if (!c)
                return;

        if (c->macsec) {
                if (c->sci.as_uint64 > 0)
                        ordered_hashmap_remove(c->macsec->receive_channels, &c->sci.as_uint64);

                if (c->section)
                        ordered_hashmap_remove(c->macsec->receive_channels_by_section, c->section);
        }

        network_config_section_free(c->section);

        free(c);
}
