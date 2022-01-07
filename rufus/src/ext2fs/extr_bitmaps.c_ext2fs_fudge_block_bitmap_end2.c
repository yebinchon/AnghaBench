
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ext2fs_block_bitmap ;
typedef int errcode_t ;
typedef int blk64_t ;


 int EXT2_ET_FUDGE_BLOCK_BITMAP_END ;
 int ext2fs_fudge_generic_bmap_end (int ,int ,int ,int *) ;

errcode_t ext2fs_fudge_block_bitmap_end2(ext2fs_block_bitmap bitmap,
      blk64_t end, blk64_t *oend)
{
 return (ext2fs_fudge_generic_bmap_end(bitmap,
           EXT2_ET_FUDGE_BLOCK_BITMAP_END,
           end, oend));
}
