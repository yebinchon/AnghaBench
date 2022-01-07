
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ext2_inode {scalar_t__ i_blocks; int i_size; scalar_t__* i_block; int i_flags; int i_mode; } ;
typedef int ext2_filsys ;


 int EXT2_N_BLOCKS ;
 int EXT4_INLINE_DATA_FL ;
 int LINUX_S_ISDIR (int ) ;
 scalar_t__ LINUX_S_ISLNK (int ) ;
 int LINUX_S_ISREG (int ) ;
 scalar_t__ ext2fs_file_acl_block (int ,struct ext2_inode*) ;

int ext2fs_inode_has_valid_blocks2(ext2_filsys fs, struct ext2_inode *inode)
{




 if (!LINUX_S_ISDIR(inode->i_mode) && !LINUX_S_ISREG(inode->i_mode) &&
     !LINUX_S_ISLNK(inode->i_mode))
  return 0;





 if (LINUX_S_ISLNK (inode->i_mode)) {
  if (ext2fs_file_acl_block(fs, inode) == 0) {

   if (inode->i_blocks == 0)
    return 0;
  } else {

   if (inode->i_size >= EXT2_N_BLOCKS*4)
    return 1;
   if (inode->i_size > 4 && inode->i_block[1] == 0)
    return 1;
   return 0;
  }
 }





 if (inode->i_flags & EXT4_INLINE_DATA_FL)
  return 0;
 return 1;
}
