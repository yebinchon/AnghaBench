
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct ext4_group_desc {int bg_inode_bitmap_csum_lo; int bg_inode_bitmap_csum_hi; } ;
typedef TYPE_1__* ext2_filsys ;
typedef int errcode_t ;
typedef int dgrp_t ;
typedef int __u32 ;
struct TYPE_4__ {int super; int csum_seed; int group_desc; } ;


 scalar_t__ EXT2_DESC_SIZE (int ) ;
 scalar_t__ EXT4_BG_INODE_BITMAP_CSUM_HI_END ;
 int ext2fs_crc32c_le (int ,unsigned char*,int) ;
 scalar_t__ ext2fs_group_desc (TYPE_1__*,int ,int ) ;
 int ext2fs_has_feature_metadata_csum (int ) ;

errcode_t ext2fs_inode_bitmap_csum_set(ext2_filsys fs, dgrp_t group,
           char *bitmap, int size)
{
 __u32 crc;
 struct ext4_group_desc *gdp = (struct ext4_group_desc *)
   ext2fs_group_desc(fs, fs->group_desc, group);

 if (!ext2fs_has_feature_metadata_csum(fs->super))
  return 0;

 crc = ext2fs_crc32c_le(fs->csum_seed, (unsigned char *)bitmap, size);
 gdp->bg_inode_bitmap_csum_lo = crc & 0xFFFF;
 if (EXT2_DESC_SIZE(fs->super) >= EXT4_BG_INODE_BITMAP_CSUM_HI_END)
  gdp->bg_inode_bitmap_csum_hi = crc >> 16;

 return 0;
}
