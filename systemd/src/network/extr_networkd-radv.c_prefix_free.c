
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int radv_prefix; scalar_t__ section; TYPE_1__* network; } ;
struct TYPE_6__ {scalar_t__ n_static_prefixes; int prefixes_by_section; int static_prefixes; } ;
typedef TYPE_2__ Prefix ;


 int LIST_REMOVE (int ,int ,TYPE_2__*) ;
 int assert (int) ;
 int free (TYPE_2__*) ;
 int hashmap_remove (int ,scalar_t__) ;
 int network_config_section_free (scalar_t__) ;
 int prefixes ;
 int sd_radv_prefix_unref (int ) ;

void prefix_free(Prefix *prefix) {
        if (!prefix)
                return;

        if (prefix->network) {
                LIST_REMOVE(prefixes, prefix->network->static_prefixes, prefix);
                assert(prefix->network->n_static_prefixes > 0);
                prefix->network->n_static_prefixes--;

                if (prefix->section)
                        hashmap_remove(prefix->network->prefixes_by_section,
                                       prefix->section);
        }

        network_config_section_free(prefix->section);
        sd_radv_prefix_unref(prefix->radv_prefix);

        free(prefix);
}
