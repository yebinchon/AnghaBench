
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ext2_filsys ;
typedef int errcode_t ;
typedef scalar_t__ blk_t ;
typedef scalar_t__ blk64_t ;


 int ext2fs_alloc_block3 (int ,scalar_t__,char*,scalar_t__*,int *) ;

errcode_t ext2fs_alloc_block(ext2_filsys fs, blk_t goal,
        char *block_buf, blk_t *ret)
{
 errcode_t retval;
 blk64_t ret64, goal64 = goal;
 retval = ext2fs_alloc_block3(fs, goal64, block_buf, &ret64, ((void*)0));
 if (!retval)
  *ret = (blk_t)ret64;
        return retval;
}
