
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef int PEXT2_FILESYS ;


 int ext2_inode_alloc_stats2 (int ,int ,int,int ) ;

void ext2_inode_alloc_stats(PEXT2_FILESYS fs, ULONG ino, int inuse)
{
    ext2_inode_alloc_stats2(fs, ino, inuse, 0);
}
