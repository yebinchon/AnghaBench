
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ section; TYPE_1__* network; } ;
struct TYPE_6__ {scalar_t__ n_address_labels; int address_labels_by_section; int address_labels; } ;
typedef TYPE_2__ AddressLabel ;


 int LIST_REMOVE (int ,int ,TYPE_2__*) ;
 int assert (int) ;
 int free (TYPE_2__*) ;
 int hashmap_remove (int ,scalar_t__) ;
 int labels ;
 int network_config_section_free (scalar_t__) ;

void address_label_free(AddressLabel *label) {
        if (!label)
                return;

        if (label->network) {
                LIST_REMOVE(labels, label->network->address_labels, label);
                assert(label->network->n_address_labels > 0);
                label->network->n_address_labels--;

                if (label->section) {
                        hashmap_remove(label->network->address_labels_by_section, label->section);
                        network_config_section_free(label->section);
                }
        }

        free(label);
}
