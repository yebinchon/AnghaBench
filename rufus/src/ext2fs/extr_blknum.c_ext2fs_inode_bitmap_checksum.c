
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct ext4_group_desc {int bg_inode_bitmap_csum_lo; scalar_t__ bg_inode_bitmap_csum_hi; } ;
typedef TYPE_1__* ext2_filsys ;
typedef int dgrp_t ;
typedef int __u32 ;
struct TYPE_4__ {int super; int group_desc; } ;


 scalar_t__ EXT2_DESC_SIZE (int ) ;
 scalar_t__ EXT4_BG_INODE_BITMAP_CSUM_HI_END ;
 struct ext4_group_desc* ext4fs_group_desc (TYPE_1__*,int ,int ) ;

__u32 ext2fs_inode_bitmap_checksum(ext2_filsys fs, dgrp_t group)
{
 struct ext4_group_desc *gdp;
 __u32 csum;

 gdp = ext4fs_group_desc(fs, fs->group_desc, group);
 csum = gdp->bg_inode_bitmap_csum_lo;
 if (EXT2_DESC_SIZE(fs->super) >= EXT4_BG_INODE_BITMAP_CSUM_HI_END)
  csum |= ((__u32)gdp->bg_inode_bitmap_csum_hi << 16);
 return csum;
}
