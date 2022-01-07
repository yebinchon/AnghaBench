
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* ext2_filsys ;
typedef TYPE_2__* ext2_file_t ;
typedef scalar_t__ errcode_t ;
typedef int blk64_t ;
struct TYPE_9__ {int i_flags; } ;
struct TYPE_8__ {int flags; int buf; int physblock; int blockno; int ino; TYPE_5__ inode; TYPE_1__* fs; } ;
struct TYPE_7__ {int io; } ;


 int BMAP_ALLOC ;
 int BMAP_BUFFER ;
 int BMAP_RET_UNINIT ;
 int BMAP_SET ;
 int EXT2_CHECK_MAGIC (TYPE_2__*,int ) ;
 int EXT2_ET_MAGIC_EXT2_FILE ;
 int EXT2_FILE_BUF_DIRTY ;
 int EXT2_FILE_BUF_VALID ;
 int EXT4_EXTENTS_FL ;
 scalar_t__ ext2fs_bmap2 (TYPE_1__*,int ,TYPE_5__*,int ,int ,int ,int*,int *) ;
 scalar_t__ io_channel_write_blk64 (int ,int ,int,int ) ;

errcode_t ext2fs_file_flush(ext2_file_t file)
{
 errcode_t retval;
 ext2_filsys fs;
 int ret_flags;
 blk64_t dontcare;

 EXT2_CHECK_MAGIC(file, EXT2_ET_MAGIC_EXT2_FILE);
 fs = file->fs;

 if (!(file->flags & EXT2_FILE_BUF_VALID) ||
     !(file->flags & EXT2_FILE_BUF_DIRTY))
  return 0;


 if (file->physblock && file->inode.i_flags & EXT4_EXTENTS_FL) {
  retval = ext2fs_bmap2(fs, file->ino, &file->inode, BMAP_BUFFER,
          0, file->blockno, &ret_flags, &dontcare);
  if (retval)
   return retval;
  if (ret_flags & BMAP_RET_UNINIT) {
   retval = ext2fs_bmap2(fs, file->ino, &file->inode,
           BMAP_BUFFER, BMAP_SET,
           file->blockno, 0,
           &file->physblock);
   if (retval)
    return retval;
  }
 }





 if (!file->physblock) {
  retval = ext2fs_bmap2(fs, file->ino, &file->inode,
         BMAP_BUFFER, file->ino ? BMAP_ALLOC : 0,
         file->blockno, 0, &file->physblock);
  if (retval)
   return retval;
 }

 retval = io_channel_write_blk64(fs->io, file->physblock, 1, file->buf);
 if (retval)
  return retval;

 file->flags &= ~EXT2_FILE_BUF_DIRTY;

 return retval;
}
