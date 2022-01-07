
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ext2fs_rb_private {int root; } ;
typedef TYPE_1__* ext2fs_generic_bitmap_64 ;
struct TYPE_3__ {scalar_t__ private; } ;


 int ext2fs_free_mem (struct ext2fs_rb_private**) ;
 int rb_free_tree (int *) ;

__attribute__((used)) static void rb_free_bmap(ext2fs_generic_bitmap_64 bitmap)
{
 struct ext2fs_rb_private *bp;

 bp = (struct ext2fs_rb_private *) bitmap->private;

 rb_free_tree(&bp->root);
 ext2fs_free_mem(&bp);
 bp = 0;
}
