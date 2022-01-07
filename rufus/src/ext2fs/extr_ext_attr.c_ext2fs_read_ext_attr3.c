
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ext2_ino_t ;
typedef TYPE_1__* ext2_filsys ;
typedef scalar_t__ errcode_t ;
typedef int blk64_t ;
struct TYPE_4__ {int flags; int blocksize; int io; } ;


 scalar_t__ EXT2_ET_EXT_ATTR_CSUM_INVALID ;
 int EXT2_FLAG_IGNORE_CSUM_ERRORS ;
 scalar_t__ check_ext_attr_header (void*) ;
 int ext2fs_ext_attr_block_csum_verify (TYPE_1__*,int ,int ,void*) ;
 int ext2fs_swap_ext_attr (void*,void*,int ,int) ;
 scalar_t__ io_channel_read_blk64 (int ,int ,int,void*) ;

errcode_t ext2fs_read_ext_attr3(ext2_filsys fs, blk64_t block, void *buf,
    ext2_ino_t inum)
{
 int csum_failed = 0;
 errcode_t retval;

 retval = io_channel_read_blk64(fs->io, block, 1, buf);
 if (retval)
  return retval;

 if (!(fs->flags & EXT2_FLAG_IGNORE_CSUM_ERRORS) &&
     !ext2fs_ext_attr_block_csum_verify(fs, inum, block, buf))
  csum_failed = 1;





 retval = check_ext_attr_header(buf);
 if (retval == 0 && csum_failed)
  retval = EXT2_ET_EXT_ATTR_CSUM_INVALID;

 return retval;
}
