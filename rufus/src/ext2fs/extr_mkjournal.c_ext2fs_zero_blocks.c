
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ext2_filsys ;
typedef scalar_t__ errcode_t ;
typedef scalar_t__ blk_t ;
typedef scalar_t__ blk64_t ;


 scalar_t__ ext2fs_zero_blocks2 (int ,scalar_t__,int,scalar_t__*,int*) ;

errcode_t ext2fs_zero_blocks(ext2_filsys fs, blk_t blk, int num,
        blk_t *ret_blk, int *ret_count)
{
 blk64_t ret_blk2;
 errcode_t retval;

 retval = ext2fs_zero_blocks2(fs, blk, num, &ret_blk2, ret_count);
 if (retval)
  *ret_blk = (blk_t) ret_blk2;
 return retval;
}
