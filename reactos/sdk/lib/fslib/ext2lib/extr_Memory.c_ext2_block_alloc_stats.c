
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_8__ {TYPE_2__* ext2_sb; TYPE_1__* group_desc; int block_map; } ;
struct TYPE_7__ {int s_free_blocks_count; } ;
struct TYPE_6__ {int bg_free_blocks_count; } ;
typedef TYPE_3__* PEXT2_FILESYS ;


 int ext2_group_of_blk (TYPE_3__*,int ) ;
 int ext2_mark_block_bitmap (int ,int ) ;
 int ext2_unmark_block_bitmap (int ,int ) ;

void ext2_block_alloc_stats(PEXT2_FILESYS fs, ULONG blk, int inuse)
{
    int group = ext2_group_of_blk(fs, blk);

    if (inuse > 0)
        ext2_mark_block_bitmap(fs->block_map, blk);
    else
        ext2_unmark_block_bitmap(fs->block_map, blk);

    fs->group_desc[group].bg_free_blocks_count -= inuse;
    fs->ext2_sb->s_free_blocks_count -= inuse;
}
