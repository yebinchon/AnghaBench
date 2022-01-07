
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct ext4_group_desc {int bg_inode_bitmap; scalar_t__ bg_inode_bitmap_hi; } ;
typedef TYPE_1__* ext2_filsys ;
typedef int dgrp_t ;
typedef int blk64_t ;
typedef int __u64 ;
struct TYPE_4__ {int super; int group_desc; } ;


 scalar_t__ ext2fs_has_feature_64bit (int ) ;
 struct ext4_group_desc* ext4fs_group_desc (TYPE_1__*,int ,int ) ;

blk64_t ext2fs_inode_bitmap_loc(ext2_filsys fs, dgrp_t group)
{
 struct ext4_group_desc *gdp;

 gdp = ext4fs_group_desc(fs, fs->group_desc, group);
 return gdp->bg_inode_bitmap |
  (ext2fs_has_feature_64bit(fs->super) ?
   (__u64) gdp->bg_inode_bitmap_hi << 32 : 0);
}
