
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ext2_inode {int dummy; } ;
typedef int ext2_inode_scan ;
typedef int ext2_ino_t ;
typedef int errcode_t ;


 int ext2fs_get_next_inode_full (int ,int *,struct ext2_inode*,int) ;

errcode_t ext2fs_get_next_inode(ext2_inode_scan scan, ext2_ino_t *ino,
    struct ext2_inode *inode)
{
 return ext2fs_get_next_inode_full(scan, ino, inode,
      sizeof(struct ext2_inode));
}
