
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ext2_filsys ;
typedef int dgrp_t ;


 int ext2fs_bg_checksum_set (int ,int ,int ) ;
 int ext2fs_group_desc_csum (int ,int ) ;
 int ext2fs_has_group_desc_csum (int ) ;

void ext2fs_group_desc_csum_set(ext2_filsys fs, dgrp_t group)
{
 if (!ext2fs_has_group_desc_csum(fs))
  return;



 ext2fs_bg_checksum_set(fs, group, ext2fs_group_desc_csum(fs, group));
}
