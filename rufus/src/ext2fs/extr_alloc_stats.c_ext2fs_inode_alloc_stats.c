
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ext2_ino_t ;
typedef int ext2_filsys ;


 int ext2fs_inode_alloc_stats2 (int ,int ,int,int ) ;

void ext2fs_inode_alloc_stats(ext2_filsys fs, ext2_ino_t ino, int inuse)
{
 ext2fs_inode_alloc_stats2(fs, ino, inuse, 0);
}
