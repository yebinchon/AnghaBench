
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ext2_filsys ;
typedef scalar_t__ errcode_t ;
typedef int blk_t ;
typedef int blk64_t ;


 int EXT2_ALLOCRANGE_ALL_FLAGS ;
 int EXT2_ALLOCRANGE_FIXED_GOAL ;
 int EXT2_ALLOCRANGE_ZERO_BLOCKS ;
 int EXT2_CHECK_MAGIC (int ,int ) ;
 scalar_t__ EXT2_ET_BLOCK_ALLOC_FAIL ;
 scalar_t__ EXT2_ET_INVALID_ARGUMENT ;
 int EXT2_ET_MAGIC_EXT2FS_FILSYS ;
 int EXT2_NEWRANGE_FIXED_GOAL ;
 int EXT2_NEWRANGE_MIN_LENGTH ;
 int ext2fs_block_alloc_stats_range (int ,int ,int ,int) ;
 scalar_t__ ext2fs_new_range (int ,int,int ,int ,int *,int *,int *) ;
 scalar_t__ ext2fs_zero_blocks2 (int ,int ,int ,int *,int *) ;

errcode_t ext2fs_alloc_range(ext2_filsys fs, int flags, blk64_t goal,
        blk_t len, blk64_t *ret)
{
 int newr_flags = EXT2_NEWRANGE_MIN_LENGTH;
 errcode_t retval;
 blk64_t plen;

 EXT2_CHECK_MAGIC(fs, EXT2_ET_MAGIC_EXT2FS_FILSYS);
 if (len == 0 || (flags & ~EXT2_ALLOCRANGE_ALL_FLAGS))
  return EXT2_ET_INVALID_ARGUMENT;

 if (flags & EXT2_ALLOCRANGE_FIXED_GOAL)
  newr_flags |= EXT2_NEWRANGE_FIXED_GOAL;

 retval = ext2fs_new_range(fs, newr_flags, goal, len, ((void*)0), ret, &plen);
 if (retval)
  return retval;

 if (plen < len)
  return EXT2_ET_BLOCK_ALLOC_FAIL;

 if (flags & EXT2_ALLOCRANGE_ZERO_BLOCKS) {
  retval = ext2fs_zero_blocks2(fs, *ret, len, ((void*)0), ((void*)0));
  if (retval)
   return retval;
 }

 ext2fs_block_alloc_stats_range(fs, *ret, len, +1);
 return retval;
}
