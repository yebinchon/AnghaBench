
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* ext2_filsys ;
typedef int dgrp_t ;
typedef int blk64_t ;
struct TYPE_6__ {int s_blocks_per_group; } ;
struct TYPE_5__ {int group_desc_count; TYPE_4__* super; } ;


 int ext2fs_blocks_count (TYPE_4__*) ;
 int ext2fs_group_first_block2 (TYPE_1__*,int) ;

blk64_t ext2fs_group_last_block2(ext2_filsys fs, dgrp_t group)
{
 return (group == fs->group_desc_count - 1 ?
  ext2fs_blocks_count(fs->super) - 1 :
  ext2fs_group_first_block2(fs, group) +
   (fs->super->s_blocks_per_group - 1));
}
