
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_2__* ext2fs_generic_bitmap_64 ;
typedef int ext2fs_generic_bitmap ;
typedef int ext2fs_block_bitmap ;
typedef unsigned int blk64_t ;
typedef int __u64 ;
struct TYPE_8__ {unsigned int cluster_bits; unsigned int start; unsigned int end; TYPE_1__* bitmap_ops; int description; } ;
struct TYPE_7__ {int (* test_clear_bmap_extent ) (TYPE_2__*,unsigned int,unsigned int) ;} ;


 int EINVAL ;
 scalar_t__ EXT2FS_IS_32_BITMAP (TYPE_2__*) ;
 int EXT2FS_IS_64_BITMAP (TYPE_2__*) ;
 int EXT2FS_UNMARK_ERROR ;
 int EXT2_ET_BAD_BLOCK_TEST ;
 int INC_STAT (TYPE_2__*,int ) ;
 int ext2fs_test_block_bitmap_range (int ,unsigned int,unsigned int) ;
 int ext2fs_test_generic_bmap (int ,unsigned int) ;
 int ext2fs_warn_bitmap (int ,unsigned int,int ) ;
 int ext2fs_warn_bitmap2 (int ,int ,int) ;
 int stub1 (TYPE_2__*,unsigned int,unsigned int) ;
 int test_ext_count ;

int ext2fs_test_block_bitmap_range2(ext2fs_block_bitmap gen_bmap,
        blk64_t block, unsigned int num)
{
 ext2fs_generic_bitmap_64 bmap = (ext2fs_generic_bitmap_64) gen_bmap;
 __u64 end = block + num;

 if (!bmap)
  return EINVAL;

 if (num == 1)
  return !ext2fs_test_generic_bmap((ext2fs_generic_bitmap)
       bmap, block);

 if (EXT2FS_IS_32_BITMAP(bmap)) {
  if ((block & ~0xffffffffULL) ||
      ((block+num-1) & ~0xffffffffULL)) {
   ext2fs_warn_bitmap2((ext2fs_generic_bitmap) bmap,
         EXT2FS_UNMARK_ERROR, 0xffffffff);
   return EINVAL;
  }
  return ext2fs_test_block_bitmap_range(
   (ext2fs_generic_bitmap) bmap, block, num);
 }

 if (!EXT2FS_IS_64_BITMAP(bmap))
  return EINVAL;

 INC_STAT(bmap, test_ext_count);


 block >>= bmap->cluster_bits;
 end += (1 << bmap->cluster_bits) - 1;
 end >>= bmap->cluster_bits;
 num = end - block;

 if ((block < bmap->start) || (block > bmap->end) ||
     (block+num-1 > bmap->end)) {
  ext2fs_warn_bitmap(EXT2_ET_BAD_BLOCK_TEST, block,
       bmap->description);
  return EINVAL;
 }

 return bmap->bitmap_ops->test_clear_bmap_extent(bmap, block, num);
}
