
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GList ;
typedef int GHashTable ;


 int g_hash_table_insert (int *,int ,int*) ;
 scalar_t__ g_hash_table_lookup (int *,char const*) ;
 int * g_list_prepend (int *,int ) ;
 int g_strdup (char const*) ;

__attribute__((used)) static void
add_to_block_list (GList **block_list, GHashTable *added_blocks, const char *block_id)
{
    int dummy;

    if (g_hash_table_lookup (added_blocks, block_id))
        return;

    *block_list = g_list_prepend (*block_list, g_strdup(block_id));
    g_hash_table_insert (added_blocks, g_strdup(block_id), &dummy);
}
