
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ext2_super_block {int s_r_blocks_count_hi; scalar_t__ s_r_blocks_count; } ;
typedef scalar_t__ blk64_t ;
typedef int __u64 ;


 scalar_t__ ext2fs_has_feature_64bit (struct ext2_super_block*) ;

void ext2fs_r_blocks_count_set(struct ext2_super_block *super, blk64_t blk)
{
 super->s_r_blocks_count = blk;
 if (ext2fs_has_feature_64bit(super))
  super->s_r_blocks_count_hi = (__u64) blk >> 32;
}
