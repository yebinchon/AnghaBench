
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_2__* ext2_filsys ;
typedef int dgrp_t ;
typedef int blk64_t ;
struct TYPE_5__ {TYPE_1__* super; } ;
struct TYPE_4__ {int s_first_data_block; int s_blocks_per_group; } ;



dgrp_t ext2fs_group_of_blk2(ext2_filsys fs, blk64_t blk)
{
 return (blk - fs->super->s_first_data_block) /
  fs->super->s_blocks_per_group;
}
