
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* ext2_filsys ;
typedef int dgrp_t ;
struct TYPE_5__ {int s_first_data_block; int s_blocks_per_group; } ;
struct TYPE_4__ {int group_desc_count; TYPE_3__* super; } ;


 int ext2fs_blocks_count (TYPE_3__*) ;

int ext2fs_group_blocks_count(ext2_filsys fs, dgrp_t group)
{
 int num_blocks;

 if (group == fs->group_desc_count - 1) {
  num_blocks = (ext2fs_blocks_count(fs->super) -
    fs->super->s_first_data_block) %
         fs->super->s_blocks_per_group;
  if (!num_blocks)
   num_blocks = fs->super->s_blocks_per_group;
 } else
  num_blocks = fs->super->s_blocks_per_group;

 return num_blocks;
}
