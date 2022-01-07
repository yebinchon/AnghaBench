
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef TYPE_1__* ext2_filsys ;
typedef scalar_t__ dgrp_t ;
struct TYPE_9__ {scalar_t__ group_desc_count; } ;


 int EXT2_BG_BLOCK_UNINIT ;
 int ext2fs_bg_flags_clear (TYPE_1__*,scalar_t__,int ) ;
 int ext2fs_bg_flags_test (TYPE_1__*,scalar_t__,int ) ;
 int ext2fs_group_desc_csum_set (TYPE_1__*,scalar_t__) ;
 int ext2fs_has_group_desc_csum (TYPE_1__*) ;
 int ext2fs_mark_bb_dirty (TYPE_1__*) ;
 int ext2fs_mark_super_dirty (TYPE_1__*) ;

void ext2fs_clear_block_uninit(ext2_filsys fs, dgrp_t group)
{
 if (group >= fs->group_desc_count ||
     !ext2fs_has_group_desc_csum(fs) ||
     !(ext2fs_bg_flags_test(fs, group, EXT2_BG_BLOCK_UNINIT)))
  return;



 ext2fs_bg_flags_clear(fs, group, EXT2_BG_BLOCK_UNINIT);
 ext2fs_group_desc_csum_set(fs, group);
 ext2fs_mark_super_dirty(fs);
 ext2fs_mark_bb_dirty(fs);
}
