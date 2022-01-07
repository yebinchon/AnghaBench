
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ ext2_off64_t ;
typedef TYPE_1__* ext2_filsys ;
typedef TYPE_2__* ext2_file_t ;
typedef scalar_t__ errcode_t ;
typedef scalar_t__ blk64_t ;
struct TYPE_7__ {int ino; TYPE_1__* fs; } ;
struct TYPE_6__ {scalar_t__ blocksize; int io; } ;


 int BMAP_RET_UNINIT ;
 scalar_t__ ext2fs_bmap2 (TYPE_1__*,int ,int *,int *,int ,scalar_t__,int*,scalar_t__*) ;
 int ext2fs_free_mem (char**) ;
 scalar_t__ ext2fs_get_mem (scalar_t__,char**) ;
 scalar_t__ io_channel_read_blk64 (int ,scalar_t__,int,char*) ;
 scalar_t__ io_channel_write_blk64 (int ,scalar_t__,int,char*) ;
 int memset (char*,int ,scalar_t__) ;
 scalar_t__ sync_buffer_position (TYPE_2__*) ;

__attribute__((used)) static errcode_t ext2fs_file_zero_past_offset(ext2_file_t file,
           ext2_off64_t offset)
{
 ext2_filsys fs = file->fs;
 char *b = ((void*)0);
 ext2_off64_t off = offset % fs->blocksize;
 blk64_t blk;
 int ret_flags;
 errcode_t retval;

 if (off == 0)
  return 0;

 retval = sync_buffer_position(file);
 if (retval)
  return retval;


 retval = ext2fs_bmap2(fs, file->ino, ((void*)0), ((void*)0), 0,
         offset / fs->blocksize, &ret_flags, &blk);
 if (retval)
  return retval;
 if ((blk == 0) || (ret_flags & BMAP_RET_UNINIT))
  return 0;


 retval = ext2fs_get_mem(fs->blocksize, &b);
 if (retval)
  return retval;


 retval = io_channel_read_blk64(fs->io, blk, 1, b);
 if (retval)
  goto out;

 memset(b + off, 0, fs->blocksize - off);

 retval = io_channel_write_blk64(fs->io, blk, 1, b);
 if (retval)
  goto out;

out:
 ext2fs_free_mem(&b);
 return retval;
}
