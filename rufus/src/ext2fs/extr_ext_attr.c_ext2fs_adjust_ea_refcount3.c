
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct ext2_ext_attr_header {int h_refcount; } ;
typedef int ext2_ino_t ;
typedef TYPE_1__* ext2_filsys ;
typedef scalar_t__ errcode_t ;
typedef scalar_t__ blk64_t ;
typedef int __u32 ;
struct TYPE_7__ {scalar_t__ s_first_data_block; } ;
struct TYPE_6__ {int blocksize; TYPE_4__* super; } ;


 scalar_t__ EXT2_ET_BAD_EA_BLOCK_NUM ;
 scalar_t__ ext2fs_blocks_count (TYPE_4__*) ;
 int ext2fs_free_mem (char**) ;
 scalar_t__ ext2fs_get_mem (int ,char**) ;
 scalar_t__ ext2fs_read_ext_attr3 (TYPE_1__*,scalar_t__,char*,int ) ;
 scalar_t__ ext2fs_write_ext_attr3 (TYPE_1__*,scalar_t__,char*,int ) ;

errcode_t ext2fs_adjust_ea_refcount3(ext2_filsys fs, blk64_t blk,
        char *block_buf, int adjust,
        __u32 *newcount, ext2_ino_t inum)
{
 errcode_t retval;
 struct ext2_ext_attr_header *header;
 char *buf = 0;

 if ((blk >= ext2fs_blocks_count(fs->super)) ||
     (blk < fs->super->s_first_data_block))
  return EXT2_ET_BAD_EA_BLOCK_NUM;

 if (!block_buf) {
  retval = ext2fs_get_mem(fs->blocksize, &buf);
  if (retval)
   return retval;
  block_buf = buf;
 }

 retval = ext2fs_read_ext_attr3(fs, blk, block_buf, inum);
 if (retval)
  goto errout;

 header = (struct ext2_ext_attr_header *) block_buf;
 header->h_refcount += adjust;
 if (newcount)
  *newcount = header->h_refcount;

 retval = ext2fs_write_ext_attr3(fs, blk, block_buf, inum);
 if (retval)
  goto errout;

errout:
 if (buf)
  ext2fs_free_mem(&buf);
 return retval;
}
