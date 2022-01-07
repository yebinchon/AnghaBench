
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXT2_MIN_BLOCK_SIZE ;

int ext2fs_journal_sb_start(int blocksize)
{
 if (blocksize == EXT2_MIN_BLOCK_SIZE)
  return 2;
 return 1;
}
