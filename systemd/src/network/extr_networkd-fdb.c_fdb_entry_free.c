
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ section; TYPE_1__* network; } ;
struct TYPE_6__ {scalar_t__ n_static_fdb_entries; int fdb_entries_by_section; int static_fdb_entries; } ;
typedef TYPE_2__ FdbEntry ;


 int LIST_REMOVE (int ,int ,TYPE_2__*) ;
 int assert (int) ;
 int free (TYPE_2__*) ;
 int hashmap_remove (int ,scalar_t__) ;
 int network_config_section_free (scalar_t__) ;
 int static_fdb_entries ;

void fdb_entry_free(FdbEntry *fdb_entry) {
        if (!fdb_entry)
                return;

        if (fdb_entry->network) {
                LIST_REMOVE(static_fdb_entries, fdb_entry->network->static_fdb_entries, fdb_entry);
                assert(fdb_entry->network->n_static_fdb_entries > 0);
                fdb_entry->network->n_static_fdb_entries--;

                if (fdb_entry->section)
                        hashmap_remove(fdb_entry->network->fdb_entries_by_section, fdb_entry->section);
        }

        network_config_section_free(fdb_entry->section);
        free(fdb_entry);
}
