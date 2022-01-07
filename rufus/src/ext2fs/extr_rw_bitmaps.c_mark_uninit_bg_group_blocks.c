
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int ext2fs_block_bitmap ;
typedef TYPE_1__* ext2_filsys ;
typedef int errcode_t ;
typedef scalar_t__ dgrp_t ;
typedef scalar_t__ blk64_t ;
struct TYPE_8__ {scalar_t__ group_desc_count; int inode_blocks_per_group; int block_map; } ;


 int EXT2_BG_BLOCK_UNINIT ;
 int ext2fs_bg_flags_test (TYPE_1__*,scalar_t__,int ) ;
 scalar_t__ ext2fs_block_bitmap_loc (TYPE_1__*,scalar_t__) ;
 scalar_t__ ext2fs_inode_bitmap_loc (TYPE_1__*,scalar_t__) ;
 scalar_t__ ext2fs_inode_table_loc (TYPE_1__*,scalar_t__) ;
 int ext2fs_mark_block_bitmap2 (int ,scalar_t__) ;
 int ext2fs_mark_block_bitmap_range2 (int ,scalar_t__,int ) ;
 int ext2fs_reserve_super_and_bgd (TYPE_1__*,scalar_t__,int ) ;

__attribute__((used)) static errcode_t mark_uninit_bg_group_blocks(ext2_filsys fs)
{
 dgrp_t i;
 blk64_t blk;
 ext2fs_block_bitmap bmap = fs->block_map;

 for (i = 0; i < fs->group_desc_count; i++) {
  if (!ext2fs_bg_flags_test(fs, i, EXT2_BG_BLOCK_UNINIT))
   continue;

  ext2fs_reserve_super_and_bgd(fs, i, bmap);




  blk = ext2fs_inode_table_loc(fs, i);
  if (blk)
   ext2fs_mark_block_bitmap_range2(bmap, blk,
      fs->inode_blocks_per_group);




  blk = ext2fs_block_bitmap_loc(fs, i);
  if (blk)
   ext2fs_mark_block_bitmap2(bmap, blk);




  blk = ext2fs_inode_bitmap_loc(fs, i);
  if (blk)
   ext2fs_mark_block_bitmap2(bmap, blk);
 }
 return 0;
}
