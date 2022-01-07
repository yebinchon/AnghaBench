
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ext2_inode {int i_atime; } ;
typedef int __u32 ;



__u32 ext2fs_get_ea_inode_hash(struct ext2_inode *inode)
{
 return inode->i_atime;
}
