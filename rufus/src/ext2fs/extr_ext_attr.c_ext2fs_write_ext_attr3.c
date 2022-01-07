
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct ext2_ext_attr_header {int dummy; } ;
typedef int ext2_ino_t ;
typedef TYPE_1__* ext2_filsys ;
typedef scalar_t__ errcode_t ;
typedef int blk64_t ;
struct TYPE_5__ {int io; int blocksize; } ;


 scalar_t__ ext2fs_ext_attr_block_csum_set (TYPE_1__*,int ,int ,struct ext2_ext_attr_header*) ;
 int ext2fs_free_mem (char**) ;
 scalar_t__ ext2fs_get_mem (int ,char**) ;
 int ext2fs_mark_changed (TYPE_1__*) ;
 int ext2fs_swap_ext_attr (char*,void*,int ,int) ;
 scalar_t__ io_channel_write_blk64 (int ,int ,int,char*) ;

errcode_t ext2fs_write_ext_attr3(ext2_filsys fs, blk64_t block, void *inbuf,
     ext2_ino_t inum)
{
 errcode_t retval;
 char *write_buf;







 write_buf = (char *) inbuf;


 retval = ext2fs_ext_attr_block_csum_set(fs, inum, block,
   (struct ext2_ext_attr_header *)write_buf);
 if (retval)
  return retval;

 retval = io_channel_write_blk64(fs->io, block, 1, write_buf);



 if (!retval)
  ext2fs_mark_changed(fs);
 return retval;
}
