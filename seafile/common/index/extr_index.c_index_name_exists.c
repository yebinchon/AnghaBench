
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct index_state {int name_hash; int i_name_hash; } ;
struct cache_entry {int dummy; } ;


 int g_free (char*) ;
 struct cache_entry* g_hash_table_lookup (int ,char const*) ;
 char* g_utf8_strdown (char const*,int) ;

struct cache_entry *index_name_exists(struct index_state *istate,
                                      const char *name, int namelen,
                                      int igncase)
{
    return g_hash_table_lookup (istate->name_hash, name);

}
