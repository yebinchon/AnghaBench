
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct index_state {scalar_t__ name_hash_initialized; } ;
struct cache_entry {int ce_flags; } ;


 int CE_UNHASHED ;
 int hash_index_entry (struct index_state*,struct cache_entry*) ;

void add_name_hash(struct index_state *istate, struct cache_entry *ce)
{
    ce->ce_flags &= ~CE_UNHASHED;
    if (istate->name_hash_initialized)
        hash_index_entry(istate, ce);
}
