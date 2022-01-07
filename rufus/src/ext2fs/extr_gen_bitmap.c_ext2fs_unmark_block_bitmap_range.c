
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef TYPE_1__* ext2fs_generic_bitmap_32 ;
typedef int ext2fs_block_bitmap ;
typedef int blk_t ;
struct TYPE_2__ {int start; int end; int bitmap; int description; } ;


 int EXT2_ET_BAD_BLOCK_UNMARK ;
 int ext2fs_fast_clear_bit (int,int ) ;
 int ext2fs_warn_bitmap (int ,int,int ) ;

void ext2fs_unmark_block_bitmap_range(ext2fs_block_bitmap gen_bitmap,
          blk_t block, int num)
{
 ext2fs_generic_bitmap_32 bitmap = (ext2fs_generic_bitmap_32) gen_bitmap;
 int i;

 if ((block < bitmap->start) || (block > bitmap->end) ||
     (block+num-1 > bitmap->end)) {
  ext2fs_warn_bitmap(EXT2_ET_BAD_BLOCK_UNMARK, block,
       bitmap->description);
  return;
 }
 for (i=0; i < num; i++)
  ext2fs_fast_clear_bit(block + i - bitmap->start,
          bitmap->bitmap);
}
