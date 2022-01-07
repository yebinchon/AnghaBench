
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 int ext4_ext_space_block (struct inode*,int) ;
 int ext4_ext_space_block_idx (struct inode*,int) ;
 int ext4_ext_space_root (struct inode*,int) ;
 int ext4_ext_space_root_idx (struct inode*,int) ;
 int ext_depth (struct inode*) ;

__attribute__((used)) static int
ext4_ext_max_entries(struct inode *inode, int depth)
{
 int max;

 if (depth == ext_depth(inode)) {
  if (depth == 0)
   max = ext4_ext_space_root(inode, 1);
  else
   max = ext4_ext_space_root_idx(inode, 1);
 } else {
  if (depth == 0)
   max = ext4_ext_space_block(inode, 1);
  else
   max = ext4_ext_space_block_idx(inode, 1);
 }

 return max;
}
