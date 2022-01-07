
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct index_state {int i_name_hash; int name_hash; } ;
struct cache_entry {int name; } ;


 int g_hash_table_insert (int ,int ,struct cache_entry*) ;
 int g_strdup (int ) ;
 int g_utf8_strdown (int ,int) ;

void add_name_hash(struct index_state *istate, struct cache_entry *ce)
{
    g_hash_table_insert (istate->name_hash, g_strdup(ce->name), ce);



}
