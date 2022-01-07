
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct ext4_group_desc {int bg_block_bitmap_csum_lo; scalar_t__ bg_block_bitmap_csum_hi; } ;
typedef TYPE_1__* ext2_filsys ;
typedef int dgrp_t ;
typedef int __u32 ;
struct TYPE_4__ {int super; int csum_seed; int group_desc; } ;


 scalar_t__ EXT2_DESC_SIZE (int ) ;
 scalar_t__ EXT4_BG_BLOCK_BITMAP_CSUM_HI_LOCATION ;
 int ext2fs_crc32c_le (int ,unsigned char*,int) ;
 scalar_t__ ext2fs_group_desc (TYPE_1__*,int ,int ) ;
 int ext2fs_has_feature_metadata_csum (int ) ;

int ext2fs_block_bitmap_csum_verify(ext2_filsys fs, dgrp_t group,
        char *bitmap, int size)
{
 struct ext4_group_desc *gdp = (struct ext4_group_desc *)
   ext2fs_group_desc(fs, fs->group_desc, group);
 __u32 provided, calculated;

 if (!ext2fs_has_feature_metadata_csum(fs->super))
  return 1;
 provided = gdp->bg_block_bitmap_csum_lo;
 calculated = ext2fs_crc32c_le(fs->csum_seed, (unsigned char *)bitmap,
          size);
 if (EXT2_DESC_SIZE(fs->super) >= EXT4_BG_BLOCK_BITMAP_CSUM_HI_LOCATION)
  provided |= (__u32)gdp->bg_block_bitmap_csum_hi << 16;
 else
  calculated &= 0xFFFF;

 return provided == calculated;
}
