
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* ext2fs_generic_bitmap_64 ;
typedef TYPE_2__* ext2fs_ba_private ;
struct TYPE_6__ {struct TYPE_6__* bitarray; } ;
struct TYPE_5__ {int private; } ;


 int ext2fs_free_mem (TYPE_2__**) ;

__attribute__((used)) static void ba_free_bmap(ext2fs_generic_bitmap_64 bitmap)
{
 ext2fs_ba_private bp = (ext2fs_ba_private) bitmap->private;

 if (!bp)
  return;

 if (bp->bitarray) {
  ext2fs_free_mem (&bp->bitarray);
  bp->bitarray = 0;
 }
 ext2fs_free_mem (&bp);
 bp = 0;
}
