
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* ext2_filsys ;
typedef scalar_t__ errcode_t ;
typedef int blk_t ;
struct TYPE_3__ {int blocksize; int flags; scalar_t__ io; scalar_t__ image_io; } ;


 int EXT2_FLAG_IMAGE_FILE ;
 int ext2fs_swab32 (int ) ;
 scalar_t__ io_channel_read_blk (scalar_t__,int ,int,void*) ;
 int memset (void*,int ,int) ;

errcode_t ext2fs_read_ind_block(ext2_filsys fs, blk_t blk, void *buf)
{
 errcode_t retval;






 if ((fs->flags & EXT2_FLAG_IMAGE_FILE) &&
     (fs->io != fs->image_io))
  memset(buf, 0, fs->blocksize);
 else {
  retval = io_channel_read_blk(fs->io, blk, 1, buf);
  if (retval)
   return retval;
 }





 return 0;
}
