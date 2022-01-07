
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int sa; scalar_t__ section; TYPE_1__* macsec; } ;
typedef TYPE_2__ TransmitAssociation ;
struct TYPE_5__ {int transmit_associations_by_section; } ;


 int free (TYPE_2__*) ;
 int network_config_section_free (scalar_t__) ;
 int ordered_hashmap_remove (int ,scalar_t__) ;
 int security_association_clear (int *) ;

__attribute__((used)) static void macsec_transmit_association_free(TransmitAssociation *a) {
        if (!a)
                return;

        if (a->macsec && a->section)
                ordered_hashmap_remove(a->macsec->transmit_associations_by_section, a->section);

        network_config_section_free(a->section);
        security_association_clear(&a->sa);

        free(a);
}
