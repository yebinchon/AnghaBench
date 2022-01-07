
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ext2fs_block_bitmap ;
typedef int errcode_t ;
typedef int blk_t ;


 int EXT2_ET_MAGIC_BLOCK_BITMAP ;
 int ext2fs_set_generic_bitmap_range (int ,int ,int ,unsigned int,void*) ;

errcode_t ext2fs_set_block_bitmap_range(ext2fs_block_bitmap bmap,
     blk_t start, unsigned int num,
     void *in)
{
 return (ext2fs_set_generic_bitmap_range(bmap,
      EXT2_ET_MAGIC_BLOCK_BITMAP,
      start, num, in));
}
