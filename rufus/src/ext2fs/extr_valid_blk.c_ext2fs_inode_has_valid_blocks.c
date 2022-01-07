
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ext2_inode {int dummy; } ;


 int ext2fs_inode_has_valid_blocks2 (int *,struct ext2_inode*) ;

int ext2fs_inode_has_valid_blocks(struct ext2_inode *inode)
{
 return ext2fs_inode_has_valid_blocks2(((void*)0), inode);
}
