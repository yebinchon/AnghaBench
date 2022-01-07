
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ext2_inode {int i_atime; } ;
typedef int __u32 ;



void ext2fs_set_ea_inode_hash(struct ext2_inode *inode, __u32 hash)
{
 inode->i_atime = hash;
}
