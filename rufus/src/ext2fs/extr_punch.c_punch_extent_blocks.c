
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ext2_inode {int dummy; } ;
typedef int ext2_ino_t ;
typedef int ext2_filsys ;
typedef scalar_t__ errcode_t ;
typedef int blk64_t ;
typedef int __u32 ;


 int EXT2FS_CLUSTER_MASK (int ) ;
 int EXT2FS_CLUSTER_RATIO (int ) ;
 int ext2fs_block_alloc_stats2 (int ,int,int) ;
 scalar_t__ ext2fs_map_cluster_block (int ,int ,struct ext2_inode*,int,int*) ;

__attribute__((used)) static errcode_t punch_extent_blocks(ext2_filsys fs, ext2_ino_t ino,
         struct ext2_inode *inode,
         blk64_t lfree_start, blk64_t free_start,
         __u32 free_count, int *freed)
{
 blk64_t pblk;
 int freed_now = 0;
 __u32 cluster_freed;
 errcode_t retval = 0;


 if (EXT2FS_CLUSTER_RATIO(fs) == 1) {
  *freed += free_count;
  while (free_count-- > 0)
   ext2fs_block_alloc_stats2(fs, free_start++, -1);
  return retval;
 }






 if (free_start & EXT2FS_CLUSTER_MASK(fs)) {
  retval = ext2fs_map_cluster_block(fs, ino, inode,
        lfree_start, &pblk);
  if (retval)
   goto errout;
  if (!pblk) {
   ext2fs_block_alloc_stats2(fs, free_start, -1);
   freed_now++;
  }
  cluster_freed = EXT2FS_CLUSTER_RATIO(fs) -
   (free_start & EXT2FS_CLUSTER_MASK(fs));
  if (cluster_freed > free_count)
   cluster_freed = free_count;
  free_count -= cluster_freed;
  free_start += cluster_freed;
  lfree_start += cluster_freed;
 }


 while (free_count > 0 && free_count >= (unsigned) EXT2FS_CLUSTER_RATIO(fs)) {
  ext2fs_block_alloc_stats2(fs, free_start, -1);
  freed_now++;
  cluster_freed = EXT2FS_CLUSTER_RATIO(fs);
  free_count -= cluster_freed;
  free_start += cluster_freed;
  lfree_start += cluster_freed;
 }


 if (free_count > 0) {
  retval = ext2fs_map_cluster_block(fs, ino, inode,
        lfree_start, &pblk);
  if (retval)
   goto errout;
  if (!pblk) {
   ext2fs_block_alloc_stats2(fs, free_start, -1);
   freed_now++;
  }
 }

errout:
 *freed += freed_now;
 return retval;
}
