
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ext2_inode {int i_flags; int i_size; int i_blocks; } ;
typedef int ext2_ino_t ;
typedef int ext2_filsys ;
typedef scalar_t__ errcode_t ;
typedef scalar_t__ blk64_t ;


 scalar_t__ EINVAL ;
 int EXT4_EXTENTS_FL ;
 int EXT4_INLINE_DATA_FL ;
 scalar_t__ ext2fs_punch_extent (int ,int,struct ext2_inode*,scalar_t__,scalar_t__) ;
 scalar_t__ ext2fs_punch_ind (int ,struct ext2_inode*,char*,scalar_t__,scalar_t__) ;
 scalar_t__ ext2fs_punch_inline_data (int ,int,struct ext2_inode*,scalar_t__,scalar_t__) ;
 scalar_t__ ext2fs_read_inode (int ,int,struct ext2_inode*) ;
 scalar_t__ ext2fs_write_inode (int ,int,struct ext2_inode*) ;
 int printf (char*,int,int,int) ;

errcode_t ext2fs_punch(ext2_filsys fs, ext2_ino_t ino,
         struct ext2_inode *inode,
         char *block_buf, blk64_t start,
         blk64_t end)
{
 errcode_t retval;
 struct ext2_inode inode_buf;

 if (start > end)
  return EINVAL;


 if (!inode) {
  retval = ext2fs_read_inode(fs, ino, &inode_buf);
  if (retval)
   return retval;
  inode = &inode_buf;
 }
 if (inode->i_flags & EXT4_INLINE_DATA_FL)
  return ext2fs_punch_inline_data(fs, ino, inode, start, end);
 else if (inode->i_flags & EXT4_EXTENTS_FL)
  retval = ext2fs_punch_extent(fs, ino, inode, start, end);
 else
  retval = ext2fs_punch_ind(fs, inode, block_buf, start, end);
 if (retval)
  return retval;





 return ext2fs_write_inode(fs, ino, inode);
}
