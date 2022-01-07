
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* ext2_sb; } ;
struct TYPE_4__ {scalar_t__ s_rev_level; int s_inode_size; int s_first_ino; } ;
typedef TYPE_1__* PEXT2_SUPER_BLOCK ;
typedef TYPE_2__* PEXT2_FILESYS ;


 scalar_t__ EXT2_DYNAMIC_REV ;
 int EXT2_GOOD_OLD_FIRST_INO ;
 int EXT2_GOOD_OLD_INODE_SIZE ;
 scalar_t__ EXT2_GOOD_OLD_REV ;

void ext2_update_dynamic_rev(PEXT2_FILESYS fs)
{
    PEXT2_SUPER_BLOCK sb = fs->ext2_sb;

    if (sb->s_rev_level > EXT2_GOOD_OLD_REV)
        return;

    sb->s_rev_level = EXT2_DYNAMIC_REV;
    sb->s_first_ino = EXT2_GOOD_OLD_FIRST_INO;
    sb->s_inode_size = EXT2_GOOD_OLD_INODE_SIZE;


}
