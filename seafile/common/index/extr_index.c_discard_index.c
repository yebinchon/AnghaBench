
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ nsec; scalar_t__ sec; } ;
struct index_state {int cache_nr; scalar_t__ initialized; int * alloc; int * cache; int i_name_hash; int name_hash; scalar_t__ name_hash_initialized; TYPE_1__ timestamp; scalar_t__ cache_changed; } ;


 int cache_entry_free (int ) ;
 int free (int *) ;
 int g_hash_table_destroy (int ) ;

int discard_index(struct index_state *istate)
{
    int i;
    for (i = 0; i < istate->cache_nr; ++i)
        cache_entry_free (istate->cache[i]);

    istate->cache_nr = 0;
    istate->cache_changed = 0;
    istate->timestamp.sec = 0;
    istate->timestamp.nsec = 0;
    istate->name_hash_initialized = 0;
    g_hash_table_destroy (istate->name_hash);





    free(istate->cache);
    istate->alloc = ((void*)0);
    istate->initialized = 0;


    return 0;
}
