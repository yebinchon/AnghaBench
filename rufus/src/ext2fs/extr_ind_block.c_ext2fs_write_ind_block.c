
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* ext2_filsys ;
typedef int errcode_t ;
typedef int blk_t ;
struct TYPE_3__ {int blocksize; int flags; int io; } ;


 int EXT2_FLAG_IMAGE_FILE ;
 int ext2fs_swab32 (int ) ;
 int io_channel_write_blk (int ,int ,int,void*) ;

errcode_t ext2fs_write_ind_block(ext2_filsys fs, blk_t blk, void *buf)
{






 if (fs->flags & EXT2_FLAG_IMAGE_FILE)
  return 0;






 return io_channel_write_blk(fs->io, blk, 1, buf);
}
