
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ext2_inode_large {int dummy; } ;
struct ext2_inode {int dummy; } ;



__attribute__((used)) static inline
struct ext2_inode *EXT2_INODE(struct ext2_inode_large *large_inode)
{
 return (struct ext2_inode *) large_inode;
}
