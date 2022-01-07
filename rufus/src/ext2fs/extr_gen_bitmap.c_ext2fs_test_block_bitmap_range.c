
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* ext2fs_generic_bitmap_32 ;
typedef int ext2fs_generic_bitmap ;
typedef int ext2fs_block_bitmap ;
typedef int blk_t ;
struct TYPE_3__ {int start; int real_end; int description; } ;


 int EXT2_CHECK_MAGIC (TYPE_1__*,int ) ;
 int EXT2_ET_BAD_BLOCK_TEST ;
 int EXT2_ET_MAGIC_BLOCK_BITMAP ;
 int ext2fs_test_clear_generic_bitmap_range (int ,int,int) ;
 int ext2fs_warn_bitmap (int ,int,int ) ;

int ext2fs_test_block_bitmap_range(ext2fs_block_bitmap gen_bitmap,
       blk_t block, int num)
{
 ext2fs_generic_bitmap_32 bitmap = (ext2fs_generic_bitmap_32) gen_bitmap;

 EXT2_CHECK_MAGIC(bitmap, EXT2_ET_MAGIC_BLOCK_BITMAP);
 if ((block < bitmap->start) || (block > bitmap->real_end) ||
     (block+num-1 > bitmap->real_end)) {
  ext2fs_warn_bitmap(EXT2_ET_BAD_BLOCK_TEST,
       block, bitmap->description);
  return 0;
 }
 return ext2fs_test_clear_generic_bitmap_range((ext2fs_generic_bitmap)
            bitmap, block, num);
}
