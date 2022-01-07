
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ext2_super_block {scalar_t__ s_rev_level; int s_inode_size; int s_first_ino; } ;
typedef TYPE_1__* ext2_filsys ;
struct TYPE_3__ {struct ext2_super_block* super; } ;


 scalar_t__ EXT2_DYNAMIC_REV ;
 int EXT2_GOOD_OLD_FIRST_INO ;
 int EXT2_GOOD_OLD_INODE_SIZE ;
 scalar_t__ EXT2_GOOD_OLD_REV ;

void ext2fs_update_dynamic_rev(ext2_filsys fs)
{
 struct ext2_super_block *sb = fs->super;

 if (sb->s_rev_level > EXT2_GOOD_OLD_REV)
  return;

 sb->s_rev_level = EXT2_DYNAMIC_REV;
 sb->s_first_ino = EXT2_GOOD_OLD_FIRST_INO;
 sb->s_inode_size = EXT2_GOOD_OLD_INODE_SIZE;


}
