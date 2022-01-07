
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int n_blocks; int block_ids; int block_hash; } ;
typedef TYPE_1__ BlockList ;


 scalar_t__ g_hash_table_lookup (int ,char const*) ;
 int g_hash_table_replace (int ,char*,char*) ;
 int g_ptr_array_add (int ,char*) ;
 char* g_strdup (char const*) ;

void
block_list_insert (BlockList *bl, const char *block_id)
{
    if (g_hash_table_lookup (bl->block_hash, block_id))
        return;

    char *key = g_strdup(block_id);
    g_hash_table_replace (bl->block_hash, key, key);
    g_ptr_array_add (bl->block_ids, g_strdup(block_id));
    ++bl->n_blocks;
}
