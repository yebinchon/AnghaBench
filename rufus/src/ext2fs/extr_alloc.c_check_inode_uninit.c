
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int ext2fs_inode_bitmap ;
typedef scalar_t__ ext2_ino_t ;
typedef TYPE_2__* ext2_filsys ;
typedef scalar_t__ dgrp_t ;
struct TYPE_11__ {scalar_t__ group_desc_count; TYPE_1__* super; } ;
struct TYPE_10__ {scalar_t__ s_inodes_per_group; } ;


 int EXT2_BG_BLOCK_UNINIT ;
 int EXT2_BG_INODE_UNINIT ;
 int ext2fs_bg_flags_clear (TYPE_2__*,scalar_t__,int ) ;
 int ext2fs_bg_flags_test (TYPE_2__*,scalar_t__,int ) ;
 int ext2fs_fast_unmark_inode_bitmap2 (int ,scalar_t__) ;
 int ext2fs_group_desc_csum_set (TYPE_2__*,scalar_t__) ;
 int ext2fs_has_group_desc_csum (TYPE_2__*) ;
 int ext2fs_mark_ib_dirty (TYPE_2__*) ;
 int ext2fs_mark_super_dirty (TYPE_2__*) ;

__attribute__((used)) static void check_inode_uninit(ext2_filsys fs, ext2fs_inode_bitmap map,
     dgrp_t group)
{
 ext2_ino_t i, ino;

 if (group >= fs->group_desc_count ||
     !ext2fs_has_group_desc_csum(fs) ||
     !(ext2fs_bg_flags_test(fs, group, EXT2_BG_INODE_UNINIT)))
  return;

 ino = (group * fs->super->s_inodes_per_group) + 1;
 for (i=0; i < fs->super->s_inodes_per_group; i++, ino++)
  ext2fs_fast_unmark_inode_bitmap2(map, ino);

 ext2fs_bg_flags_clear(fs, group, EXT2_BG_INODE_UNINIT);

 ext2fs_bg_flags_clear(fs, group, EXT2_BG_BLOCK_UNINIT);
 ext2fs_group_desc_csum_set(fs, group);
 ext2fs_mark_ib_dirty(fs);
 ext2fs_mark_super_dirty(fs);
}
