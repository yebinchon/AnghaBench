
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ext2_inode {int dummy; } ;
typedef int ext2_filsys ;
typedef int errcode_t ;
typedef int blk64_t ;


 int EXT2FS_CLUSTER_RATIO (int ) ;
 int ext2fs_block_alloc_stats_range (int ,int,int,int) ;
 int ext2fs_iblk_add_blocks (int ,struct ext2_inode*,int) ;

__attribute__((used)) static errcode_t claim_range(ext2_filsys fs, struct ext2_inode *inode,
        blk64_t blk, blk64_t len)
{
 blk64_t clusters;

 clusters = (len + EXT2FS_CLUSTER_RATIO(fs) - 1) /
     EXT2FS_CLUSTER_RATIO(fs);
 ext2fs_block_alloc_stats_range(fs, blk,
   clusters * EXT2FS_CLUSTER_RATIO(fs), +1);
 return ext2fs_iblk_add_blocks(fs, inode, clusters);
}
