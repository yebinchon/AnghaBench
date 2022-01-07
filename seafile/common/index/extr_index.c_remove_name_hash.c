
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct index_state {int i_name_hash; int name_hash; } ;
struct cache_entry {char* name; } ;


 int g_free (char*) ;
 int g_hash_table_remove (int ,char*) ;
 char* g_utf8_strdown (char*,int) ;

void remove_name_hash(struct index_state *istate, struct cache_entry *ce)
{
    g_hash_table_remove (istate->name_hash, ce->name);






}
