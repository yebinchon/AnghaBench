
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ext2_inode_large {int i_flags; scalar_t__ i_links_count; scalar_t__* i_block; int i_mode; } ;
typedef TYPE_1__* ext2_filsys ;
struct TYPE_5__ {scalar_t__ s_first_data_block; } ;
struct TYPE_4__ {TYPE_2__* super; } ;


 int EXT2_I_SIZE (struct ext2_inode_large*) ;
 unsigned int EXT2_N_BLOCKS ;
 int EXT4_EXTENTS_FL ;
 int EXT4_INLINE_DATA_FL ;
 int LINUX_S_ISDIR (int ) ;
 scalar_t__ LINUX_S_ISLNK (int ) ;
 int LINUX_S_ISREG (int ) ;
 scalar_t__ ext2fs_blocks_count (TYPE_2__*) ;

__attribute__((used)) static int block_map_looks_insane(ext2_filsys fs,
      struct ext2_inode_large *inode)
{
 unsigned int i, bad;


 if ((inode->i_flags & EXT4_INLINE_DATA_FL) ||
     (inode->i_flags & EXT4_EXTENTS_FL))
  return 0;
 if (!LINUX_S_ISREG(inode->i_mode) &&
     !LINUX_S_ISLNK(inode->i_mode) &&
     !LINUX_S_ISDIR(inode->i_mode))
  return 0;
 if (LINUX_S_ISLNK(inode->i_mode) &&
     EXT2_I_SIZE(inode) <= sizeof(inode->i_block))
  return 0;


 if (inode->i_links_count == 0)
  return 0;


 for (i = 0, bad = 0; i < EXT2_N_BLOCKS; i++)
  if (inode->i_block[i] != 0 &&
      (inode->i_block[i] < fs->super->s_first_data_block ||
       inode->i_block[i] >= ext2fs_blocks_count(fs->super)))
   bad++;
 return bad > EXT2_N_BLOCKS / 2;
}
