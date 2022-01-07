
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_8__ {TYPE_1__* ext2_sb; TYPE_2__* group_desc; int inode_map; } ;
struct TYPE_7__ {int bg_free_inodes_count; int bg_used_dirs_count; } ;
struct TYPE_6__ {int s_free_inodes_count; } ;
typedef TYPE_3__* PEXT2_FILESYS ;


 int ext2_group_of_ino (TYPE_3__*,int ) ;
 int ext2_mark_inode_bitmap (int ,int ) ;
 int ext2_unmark_inode_bitmap (int ,int ) ;

void ext2_inode_alloc_stats2(PEXT2_FILESYS fs, ULONG ino,
                   int inuse, int isdir)
{
    int group = ext2_group_of_ino(fs, ino);

    if (inuse > 0)
        ext2_mark_inode_bitmap(fs->inode_map, ino);
    else
        ext2_unmark_inode_bitmap(fs->inode_map, ino);

    fs->group_desc[group].bg_free_inodes_count -= inuse;

    if (isdir)
        fs->group_desc[group].bg_used_dirs_count += inuse;

    fs->ext2_sb->s_free_inodes_count -= inuse;
}
