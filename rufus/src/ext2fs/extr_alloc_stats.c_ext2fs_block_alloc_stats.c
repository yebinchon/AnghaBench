
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ext2_filsys ;
typedef int blk_t ;


 int ext2fs_block_alloc_stats2 (int ,int ,int) ;

void ext2fs_block_alloc_stats(ext2_filsys fs, blk_t blk, int inuse)
{
 ext2fs_block_alloc_stats2(fs, blk, inuse);
}
