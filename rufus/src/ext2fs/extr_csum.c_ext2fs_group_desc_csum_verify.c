
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ext2_filsys ;
typedef int dgrp_t ;


 scalar_t__ ext2fs_bg_checksum (int ,int ) ;
 scalar_t__ ext2fs_group_desc_csum (int ,int ) ;
 scalar_t__ ext2fs_has_group_desc_csum (int ) ;

int ext2fs_group_desc_csum_verify(ext2_filsys fs, dgrp_t group)
{
 if (ext2fs_has_group_desc_csum(fs) &&
     (ext2fs_bg_checksum(fs, group) !=
      ext2fs_group_desc_csum(fs, group)))
  return 0;

 return 1;
}
