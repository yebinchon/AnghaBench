
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_5__ {TYPE_1__* ext2_sb; } ;
struct TYPE_4__ {int s_first_data_block; int s_blocks_per_group; } ;
typedef TYPE_2__* PEXT2_FILESYS ;



int ext2_group_of_blk(PEXT2_FILESYS fs, ULONG blk)
{
    return (blk - fs->ext2_sb->s_first_data_block) /
        fs->ext2_sb->s_blocks_per_group;
}
