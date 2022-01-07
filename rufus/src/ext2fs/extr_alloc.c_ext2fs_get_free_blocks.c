
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ext2fs_block_bitmap ;
typedef int ext2_filsys ;
typedef int errcode_t ;
typedef scalar_t__ blk_t ;
typedef scalar_t__ blk64_t ;


 int ext2fs_get_free_blocks2 (int ,scalar_t__,scalar_t__,int,int ,scalar_t__*) ;

errcode_t ext2fs_get_free_blocks(ext2_filsys fs, blk_t start, blk_t finish,
     int num, ext2fs_block_bitmap map, blk_t *ret)
{
 errcode_t retval;
 blk64_t val;
 retval = ext2fs_get_free_blocks2(fs, start, finish, num, map, &val);
 if(!retval)
  *ret = (blk_t) val;
 return retval;
}
