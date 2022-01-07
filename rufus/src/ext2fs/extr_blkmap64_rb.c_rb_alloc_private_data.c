
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ext2fs_rb_private {scalar_t__ mark_hit; scalar_t__ test_hit; int * wcursor; int * rcursor_next; int * rcursor; int root; } ;
typedef TYPE_1__* ext2fs_generic_bitmap_64 ;
typedef scalar_t__ errcode_t ;
struct TYPE_3__ {void* private; } ;


 int RB_ROOT ;
 scalar_t__ ext2fs_get_mem (int,struct ext2fs_rb_private**) ;

__attribute__((used)) static errcode_t rb_alloc_private_data (ext2fs_generic_bitmap_64 bitmap)
{
 struct ext2fs_rb_private *bp;
 errcode_t retval;

 retval = ext2fs_get_mem(sizeof (struct ext2fs_rb_private), &bp);
 if (retval)
  return retval;

 bp->root = RB_ROOT;
 bp->rcursor = ((void*)0);
 bp->rcursor_next = ((void*)0);
 bp->wcursor = ((void*)0);






 bitmap->private = (void *) bp;
 return 0;
}
