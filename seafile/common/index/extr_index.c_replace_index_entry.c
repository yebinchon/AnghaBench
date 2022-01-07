
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct index_state {int cache_changed; struct cache_entry** cache; } ;
struct cache_entry {int dummy; } ;


 int cache_entry_free (struct cache_entry*) ;
 int remove_name_hash (struct index_state*,struct cache_entry*) ;
 int set_index_entry (struct index_state*,int,struct cache_entry*) ;

__attribute__((used)) static void replace_index_entry(struct index_state *istate, int nr, struct cache_entry *ce)
{
    struct cache_entry *old = istate->cache[nr];

    remove_name_hash(istate, old);
    cache_entry_free (old);
    set_index_entry(istate, nr, ce);
    istate->cache_changed = 1;
}
