
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * inode_map; } ;
typedef int * PEXT2_INODE_BITMAP ;
typedef TYPE_1__* PEXT2_FILESYS ;


 int ext2_free_generic_bitmap (int *) ;

void ext2_free_inode_bitmap(PEXT2_FILESYS Ext2Sys)
{
    PEXT2_INODE_BITMAP bitmap = Ext2Sys->inode_map;
    if (!bitmap)
        return;

    ext2_free_generic_bitmap(bitmap);

    Ext2Sys->inode_map = ((void*)0);
}
