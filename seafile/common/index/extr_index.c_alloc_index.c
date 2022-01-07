
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct index_state {int initialized; int name_hash_initialized; void* i_name_hash; void* name_hash; int cache_alloc; int cache; int cache_nr; } ;
struct cache_entry {int dummy; } ;


 int alloc_nr (int ) ;
 int calloc (int ,int) ;
 int g_free ;
 void* g_hash_table_new_full (int ,int ,int ,int *) ;
 int g_str_equal ;
 int g_str_hash ;

__attribute__((used)) static void alloc_index (struct index_state *istate)
{
    istate->cache_alloc = alloc_nr(istate->cache_nr);
    istate->cache = calloc(istate->cache_alloc, sizeof(struct cache_entry *));
    istate->name_hash = g_hash_table_new_full (g_str_hash, g_str_equal,
                                               g_free, ((void*)0));




    istate->initialized = 1;
    istate->name_hash_initialized = 1;
}
