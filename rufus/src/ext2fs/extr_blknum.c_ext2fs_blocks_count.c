
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ext2_super_block {int s_blocks_count; scalar_t__ s_blocks_count_hi; } ;
typedef int blk64_t ;
typedef int __u64 ;


 scalar_t__ ext2fs_has_feature_64bit (struct ext2_super_block*) ;

blk64_t ext2fs_blocks_count(struct ext2_super_block *super)
{
 return super->s_blocks_count |
  (ext2fs_has_feature_64bit(super) ?
  (__u64) super->s_blocks_count_hi << 32 : 0);
}
