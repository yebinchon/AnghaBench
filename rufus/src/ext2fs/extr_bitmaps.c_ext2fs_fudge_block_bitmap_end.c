
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ext2fs_block_bitmap ;
typedef int errcode_t ;
typedef int blk_t ;


 int EXT2_ET_FUDGE_BLOCK_BITMAP_END ;
 int EXT2_ET_MAGIC_BLOCK_BITMAP ;
 int ext2fs_fudge_generic_bitmap_end (int ,int ,int ,int ,int *) ;

errcode_t ext2fs_fudge_block_bitmap_end(ext2fs_block_bitmap bitmap,
     blk_t end, blk_t *oend)
{
 return (ext2fs_fudge_generic_bitmap_end(bitmap,
      EXT2_ET_MAGIC_BLOCK_BITMAP,
      EXT2_ET_FUDGE_BLOCK_BITMAP_END,
      end, oend));
}
