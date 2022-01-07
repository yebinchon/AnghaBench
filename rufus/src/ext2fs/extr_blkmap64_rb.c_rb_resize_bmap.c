
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ext2fs_rb_private {int root; int * wcursor; int * rcursor; } ;
typedef TYPE_1__* ext2fs_generic_bitmap_64 ;
typedef int errcode_t ;
typedef scalar_t__ __u64 ;
struct TYPE_3__ {scalar_t__ end; scalar_t__ start; scalar_t__ real_end; scalar_t__ private; } ;


 int rb_insert_extent (scalar_t__,scalar_t__,struct ext2fs_rb_private*) ;
 int rb_truncate (scalar_t__,int *) ;

__attribute__((used)) static errcode_t rb_resize_bmap(ext2fs_generic_bitmap_64 bmap,
    __u64 new_end, __u64 new_real_end)
{
 struct ext2fs_rb_private *bp;

 bp = (struct ext2fs_rb_private *) bmap->private;
 bp->rcursor = ((void*)0);
 bp->wcursor = ((void*)0);

 rb_truncate(((new_end < bmap->end) ? new_end : bmap->end) - bmap->start,
      &bp->root);

 bmap->end = new_end;
 bmap->real_end = new_real_end;

 if (bmap->end < bmap->real_end)
  rb_insert_extent(bmap->end + 1 - bmap->start,
     bmap->real_end - bmap->end, bp);
 return 0;

}
