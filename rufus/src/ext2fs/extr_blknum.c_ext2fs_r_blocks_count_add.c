
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ext2_super_block {int dummy; } ;
typedef scalar_t__ blk64_t ;


 scalar_t__ ext2fs_r_blocks_count (struct ext2_super_block*) ;
 int ext2fs_r_blocks_count_set (struct ext2_super_block*,scalar_t__) ;

void ext2fs_r_blocks_count_add(struct ext2_super_block *super, blk64_t blk)
{
 blk64_t tmp;
 tmp = ext2fs_r_blocks_count(super) + blk;
 ext2fs_r_blocks_count_set(super, tmp);
}
