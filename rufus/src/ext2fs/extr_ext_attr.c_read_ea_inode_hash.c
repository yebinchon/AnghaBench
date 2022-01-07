
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ext2_inode {int dummy; } ;
typedef int ext2_ino_t ;
typedef int ext2_filsys ;
typedef scalar_t__ errcode_t ;
typedef int __u32 ;


 int ext2fs_get_ea_inode_hash (struct ext2_inode*) ;
 scalar_t__ ext2fs_read_inode (int ,int ,struct ext2_inode*) ;

__attribute__((used)) static errcode_t read_ea_inode_hash(ext2_filsys fs, ext2_ino_t ino, __u32 *hash)
{
 struct ext2_inode inode;
 errcode_t retval;

 retval = ext2fs_read_inode(fs, ino, &inode);
 if (retval)
  return retval;
 *hash = ext2fs_get_ea_inode_hash(&inode);
 return 0;
}
