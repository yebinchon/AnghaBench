
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct ext4_group_desc {int bg_block_bitmap_hi; scalar_t__ bg_block_bitmap; } ;
typedef TYPE_1__* ext2_filsys ;
typedef int dgrp_t ;
typedef scalar_t__ blk64_t ;
typedef int __u64 ;
struct TYPE_4__ {int super; int group_desc; } ;


 scalar_t__ ext2fs_has_feature_64bit (int ) ;
 struct ext4_group_desc* ext4fs_group_desc (TYPE_1__*,int ,int ) ;

void ext2fs_block_bitmap_loc_set(ext2_filsys fs, dgrp_t group, blk64_t blk)
{
 struct ext4_group_desc *gdp;

 gdp = ext4fs_group_desc(fs, fs->group_desc, group);
 gdp->bg_block_bitmap = blk;
 if (ext2fs_has_feature_64bit(fs->super))
  gdp->bg_block_bitmap_hi = (__u64) blk >> 32;
}
