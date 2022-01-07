
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * block_map; } ;
typedef TYPE_1__* PEXT2_FILESYS ;
typedef int * PEXT2_BLOCK_BITMAP ;


 int ext2_free_generic_bitmap (int *) ;

void ext2_free_block_bitmap(PEXT2_FILESYS Ext2Sys)
{
    PEXT2_BLOCK_BITMAP bitmap = Ext2Sys->block_map;
    if (!bitmap)
        return;

    ext2_free_generic_bitmap(bitmap);

    Ext2Sys->block_map = ((void*)0);
}
