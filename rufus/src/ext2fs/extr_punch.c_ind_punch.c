
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct ext2_inode {int dummy; } ;
typedef TYPE_1__* ext2_filsys ;
typedef int errcode_t ;
typedef scalar_t__ blk_t ;
typedef int blk64_t ;
struct TYPE_7__ {int blocksize; int super; } ;


 int EXT2_BLOCK_SIZE_BITS (int ) ;
 int check_zero_block (char*,int) ;
 int ext2fs_block_alloc_stats (TYPE_1__*,scalar_t__,int) ;
 int ext2fs_iblk_sub_blocks (TYPE_1__*,struct ext2_inode*,int) ;
 int ext2fs_read_ind_block (TYPE_1__*,scalar_t__,char*) ;
 int ext2fs_write_ind_block (TYPE_1__*,scalar_t__,char*) ;
 int printf (char*,int,...) ;

__attribute__((used)) static errcode_t ind_punch(ext2_filsys fs, struct ext2_inode *inode,
      char *block_buf, blk_t *p, int level,
      blk64_t start, blk64_t count, int max)
{
 errcode_t retval;
 blk_t b;
 int i;
 blk64_t offset, incr;
 int freed = 0;





 incr = 1ULL << ((EXT2_BLOCK_SIZE_BITS(fs->super) - 2) * level);
 for (i = 0, offset = 0; i < max; i++, p++, offset += incr) {
  if (offset >= start + count)
   break;
  if (*p == 0 || (offset+incr) <= start)
   continue;
  b = *p;
  if (level > 0) {
   blk_t start2;



   retval = ext2fs_read_ind_block(fs, b, block_buf);
   if (retval)
    return retval;
   start2 = (start > offset) ? start - offset : 0;
   retval = ind_punch(fs, inode, block_buf + fs->blocksize,
        (blk_t *) block_buf, level - 1,
        start2, count - offset,
        fs->blocksize >> 2);
   if (retval)
    return retval;
   retval = ext2fs_write_ind_block(fs, b, block_buf);
   if (retval)
    return retval;
   if (!check_zero_block(block_buf, fs->blocksize))
    continue;
  }



  ext2fs_block_alloc_stats(fs, b, -1);
  *p = 0;
  freed++;
 }



 return ext2fs_iblk_sub_blocks(fs, inode, freed);
}
