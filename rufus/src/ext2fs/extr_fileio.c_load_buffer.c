
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* ext2_filsys ;
typedef TYPE_2__* ext2_file_t ;
typedef scalar_t__ errcode_t ;
struct TYPE_6__ {int flags; int buf; int physblock; int blockno; int inode; int ino; TYPE_1__* fs; } ;
struct TYPE_5__ {int blocksize; int io; } ;


 int BMAP_BUFFER ;
 int BMAP_RET_UNINIT ;
 int EXT2_FILE_BUF_VALID ;
 scalar_t__ ext2fs_bmap2 (TYPE_1__*,int ,int *,int ,int ,int ,int*,int *) ;
 scalar_t__ io_channel_read_blk64 (int ,int ,int,int ) ;
 int memset (int ,int ,int ) ;

__attribute__((used)) static errcode_t load_buffer(ext2_file_t file, int dontfill)
{
 ext2_filsys fs = file->fs;
 errcode_t retval;
 int ret_flags;

 if (!(file->flags & EXT2_FILE_BUF_VALID)) {
  retval = ext2fs_bmap2(fs, file->ino, &file->inode,
         BMAP_BUFFER, 0, file->blockno, &ret_flags,
         &file->physblock);
  if (retval)
   return retval;
  if (!dontfill) {
   if (file->physblock &&
       !(ret_flags & BMAP_RET_UNINIT)) {
    retval = io_channel_read_blk64(fs->io,
              file->physblock,
              1, file->buf);
    if (retval)
     return retval;
   } else
    memset(file->buf, 0, fs->blocksize);
  }
  file->flags |= EXT2_FILE_BUF_VALID;
 }
 return 0;
}
