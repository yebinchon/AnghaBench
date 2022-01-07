
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int sa; scalar_t__ section; TYPE_1__* macsec; } ;
struct TYPE_5__ {int receive_associations_by_section; } ;
typedef TYPE_2__ ReceiveAssociation ;


 int free (TYPE_2__*) ;
 int network_config_section_free (scalar_t__) ;
 int ordered_hashmap_remove (int ,scalar_t__) ;
 int security_association_clear (int *) ;

__attribute__((used)) static void macsec_receive_association_free(ReceiveAssociation *c) {
        if (!c)
                return;

        if (c->macsec && c->section)
                ordered_hashmap_remove(c->macsec->receive_associations_by_section, c->section);

        network_config_section_free(c->section);
        security_association_clear(&c->sa);

        free(c);
}
