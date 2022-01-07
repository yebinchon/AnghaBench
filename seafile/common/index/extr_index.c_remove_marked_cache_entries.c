
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct index_state {unsigned int cache_nr; int cache_changed; struct cache_entry** cache; } ;
struct cache_entry {int ce_flags; } ;
typedef scalar_t__ gboolean ;


 int CE_REMOVE ;
 scalar_t__ FALSE ;
 scalar_t__ TRUE ;
 int cache_entry_free (struct cache_entry*) ;
 int remove_name_hash (struct index_state*,struct cache_entry*) ;

void remove_marked_cache_entries(struct index_state *istate)
{
    struct cache_entry **ce_array = istate->cache;
    unsigned int i, j;
    gboolean removed = FALSE;

    for (i = j = 0; i < istate->cache_nr; i++) {
        if (ce_array[i]->ce_flags & CE_REMOVE) {
            remove_name_hash(istate, ce_array[i]);
            cache_entry_free (ce_array[i]);
            removed = TRUE;
        } else {
            ce_array[j++] = ce_array[i];
        }
    }
    if (removed) {
        istate->cache_changed = 1;
        istate->cache_nr = j;
    }
}
