
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ext2_inode {int dummy; } ;
typedef int ext2_ino_t ;
typedef int ext2_filsys ;
typedef scalar_t__ errcode_t ;
typedef long long blk_t ;
typedef long long blk64_t ;


 scalar_t__ EOVERFLOW ;
 scalar_t__ ext2fs_bmap2 (int ,int ,struct ext2_inode*,char*,int,long long,int ,long long*) ;

errcode_t ext2fs_bmap(ext2_filsys fs, ext2_ino_t ino, struct ext2_inode *inode,
        char *block_buf, int bmap_flags, blk_t block,
        blk_t *phys_blk)
{
 errcode_t ret;
 blk64_t ret_blk = *phys_blk;

 ret = ext2fs_bmap2(fs, ino, inode, block_buf, bmap_flags, block,
       0, &ret_blk);
 if (ret)
  return ret;
 if (ret_blk >= ((long long) 1 << 32))
  return EOVERFLOW;
 *phys_blk = ret_blk;
 return 0;
}
