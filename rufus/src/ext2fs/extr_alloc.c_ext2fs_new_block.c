
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ext2fs_block_bitmap ;
typedef int ext2_filsys ;
typedef int errcode_t ;
typedef scalar_t__ blk_t ;
typedef scalar_t__ blk64_t ;


 int ext2fs_new_block2 (int ,scalar_t__,int ,scalar_t__*) ;

errcode_t ext2fs_new_block(ext2_filsys fs, blk_t goal,
      ext2fs_block_bitmap map, blk_t *ret)
{
 errcode_t retval;
 blk64_t val;
 retval = ext2fs_new_block2(fs, goal, map, &val);
 if (!retval)
  *ret = (blk_t) val;
 return retval;
}
