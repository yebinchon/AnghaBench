
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct index_state {struct cache_entry** cache; } ;
struct cache_entry {int dummy; } ;


 int add_name_hash (struct index_state*,struct cache_entry*) ;

__attribute__((used)) static void set_index_entry(struct index_state *istate, int nr, struct cache_entry *ce)
{
    istate->cache[nr] = ce;
    add_name_hash(istate, ce);
}
