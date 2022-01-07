
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int block_ids; scalar_t__ block_hash; } ;
typedef TYPE_1__ BlockList ;


 int TRUE ;
 int g_free (TYPE_1__*) ;
 int g_hash_table_destroy (scalar_t__) ;
 int g_ptr_array_free (int ,int ) ;

void
block_list_free (BlockList *bl)
{
    if (bl->block_hash)
        g_hash_table_destroy (bl->block_hash);
    g_ptr_array_free (bl->block_ids, TRUE);
    g_free (bl);
}
