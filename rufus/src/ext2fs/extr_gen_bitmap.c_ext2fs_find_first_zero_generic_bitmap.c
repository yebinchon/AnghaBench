
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef TYPE_1__* ext2fs_generic_bitmap_32 ;
typedef int ext2fs_generic_bitmap ;
typedef int errcode_t ;
typedef int blk_t ;
typedef scalar_t__ __u32 ;
struct TYPE_2__ {scalar_t__ start; scalar_t__ end; int bitmap; } ;


 int EINVAL ;
 int ENOENT ;
 int EXT2FS_TEST_ERROR ;
 int ext2fs_test_bit (scalar_t__,int ) ;
 int ext2fs_warn_bitmap2 (int ,int ,scalar_t__) ;

errcode_t ext2fs_find_first_zero_generic_bitmap(ext2fs_generic_bitmap gen_bitmap,
      __u32 start, __u32 end,
      __u32 *out)
{
 ext2fs_generic_bitmap_32 bitmap = (ext2fs_generic_bitmap_32) gen_bitmap;
 blk_t b;

 if (start < bitmap->start || end > bitmap->end || start > end) {
  ext2fs_warn_bitmap2(gen_bitmap, EXT2FS_TEST_ERROR, start);
  return EINVAL;
 }

 while (start <= end) {
  b = ext2fs_test_bit(start - bitmap->start, bitmap->bitmap);
  if (!b) {
   *out = start;
   return 0;
  }
  start++;
 }

 return ENOENT;
}
