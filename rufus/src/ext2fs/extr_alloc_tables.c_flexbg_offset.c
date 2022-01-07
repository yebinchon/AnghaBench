
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_6__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int ext2fs_block_bitmap ;
typedef TYPE_1__* ext2_filsys ;
typedef int dgrp_t ;
typedef int blk64_t ;
struct TYPE_8__ {int s_log_groups_per_flex; int s_blocks_per_group; } ;
struct TYPE_7__ {int group_desc_count; TYPE_6__* super; } ;


 int ext2fs_blocks_count (TYPE_6__*) ;
 scalar_t__ ext2fs_get_free_blocks2 (TYPE_1__*,int ,int ,int,int ,int *) ;
 int ext2fs_group_first_block2 (TYPE_1__*,int) ;
 int ext2fs_group_last_block2 (TYPE_1__*,int) ;

__attribute__((used)) static blk64_t flexbg_offset(ext2_filsys fs, dgrp_t group, blk64_t start_blk,
        ext2fs_block_bitmap bmap, int rem_grp,
        int elem_size)
{
 int flexbg, flexbg_size, size;
 blk64_t last_blk, first_free = 0;
 dgrp_t last_grp;

 flexbg_size = 1 << fs->super->s_log_groups_per_flex;
 flexbg = group / flexbg_size;
 size = rem_grp * elem_size;

 if (size > (int) (fs->super->s_blocks_per_group / 4))
  size = (int) fs->super->s_blocks_per_group / 4;





 if (start_blk && start_blk < ext2fs_blocks_count(fs->super) &&
     ext2fs_get_free_blocks2(fs, start_blk, start_blk + size, elem_size,
        bmap, &first_free) == 0)
  return first_free;

 start_blk = ext2fs_group_first_block2(fs, flexbg_size * flexbg);
 last_grp = group | (flexbg_size - 1);
 if (last_grp > fs->group_desc_count-1)
  last_grp = fs->group_desc_count-1;
 last_blk = ext2fs_group_last_block2(fs, last_grp);


 if (ext2fs_get_free_blocks2(fs, start_blk, last_blk, size,
        bmap, &first_free) == 0)
  return first_free;

 if (ext2fs_get_free_blocks2(fs, start_blk, last_blk, elem_size,
       bmap, &first_free) == 0)
  return first_free;

 if (ext2fs_get_free_blocks2(fs, 0, last_blk, elem_size, bmap,
        &first_free) == 0)
  return first_free;

 return first_free;
}
