
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ext2fs_block_bitmap ;
typedef int ext2_filsys ;
typedef int errcode_t ;
typedef int blk64_t ;


 int ext2fs_new_block3 (int ,int ,int ,int *,int *) ;

errcode_t ext2fs_new_block2(ext2_filsys fs, blk64_t goal,
      ext2fs_block_bitmap map, blk64_t *ret)
{
 return ext2fs_new_block3(fs, goal, map, ret, ((void*)0));
}
