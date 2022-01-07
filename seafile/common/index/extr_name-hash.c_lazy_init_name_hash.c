
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct index_state {int name_hash_initialized; int cache_nr; int * cache; } ;


 int hash_index_entry (struct index_state*,int ) ;

__attribute__((used)) static void lazy_init_name_hash(struct index_state *istate)
{
    int nr;

    if (istate->name_hash_initialized)
        return;
    for (nr = 0; nr < istate->cache_nr; nr++)
        hash_index_entry(istate, istate->cache[nr]);
    istate->name_hash_initialized = 1;
}
