
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ext2fs_inode_bitmap ;
typedef int ext2_ino_t ;
typedef int dgrp_t ;
typedef int __u32 ;


 scalar_t__ ext2fs_fast_test_inode_bitmap2 (int ,int) ;

__attribute__((used)) static __u32 find_last_inode_ingrp(ext2fs_inode_bitmap bitmap,
       __u32 inodes_per_grp, dgrp_t grp_no)
{
 ext2_ino_t i, start_ino, end_ino;

 start_ino = grp_no * inodes_per_grp + 1;
 end_ino = start_ino + inodes_per_grp - 1;

 for (i = end_ino; i >= start_ino; i--) {
  if (ext2fs_fast_test_inode_bitmap2(bitmap, i))
   return i - start_ino + 1;
 }
 return inodes_per_grp;
}
