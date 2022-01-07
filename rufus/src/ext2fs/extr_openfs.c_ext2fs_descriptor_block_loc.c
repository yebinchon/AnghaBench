
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ext2_filsys ;
typedef int dgrp_t ;
typedef int blk_t ;


 int ext2fs_descriptor_block_loc2 (int ,int ,int ) ;

blk_t ext2fs_descriptor_block_loc(ext2_filsys fs, blk_t group_block, dgrp_t i)
{
 return ext2fs_descriptor_block_loc2(fs, group_block, i);
}
