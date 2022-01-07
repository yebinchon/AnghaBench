
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ext2_filsys ;
typedef TYPE_1__* ext2_file_t ;
typedef scalar_t__ errcode_t ;
struct TYPE_4__ {size_t pos; int inode; int ino; int buf; int fs; } ;


 scalar_t__ EXT2_ET_INLINE_DATA_NO_SPACE ;
 unsigned int EXT2_I_SIZE (int *) ;
 scalar_t__ ext2fs_file_set_size2 (TYPE_1__*,unsigned int) ;
 scalar_t__ ext2fs_inline_data_expand (int ,int ) ;
 scalar_t__ ext2fs_inline_data_get (int ,int ,int *,int ,size_t*) ;
 scalar_t__ ext2fs_inline_data_set (int ,int ,int *,int ,unsigned int) ;
 scalar_t__ ext2fs_read_inode (int ,int ,int *) ;
 int memcpy (int ,void const*,unsigned int) ;

__attribute__((used)) static errcode_t
ext2fs_file_write_inline_data(ext2_file_t file, const void *buf,
         unsigned int nbytes, unsigned int *written)
{
 ext2_filsys fs;
 errcode_t retval;
 unsigned int count = 0;
 size_t size;

 fs = file->fs;
 retval = ext2fs_inline_data_get(fs, file->ino, &file->inode,
     file->buf, &size);
 if (retval)
  return retval;

 if (file->pos < size) {
  count = nbytes - file->pos;
  memcpy(file->buf + file->pos, buf, count);

  retval = ext2fs_inline_data_set(fs, file->ino, &file->inode,
      file->buf, count);
  if (retval == EXT2_ET_INLINE_DATA_NO_SPACE)
   goto expand;
  if (retval)
   return retval;

  file->pos += count;


  if (count != 0 && EXT2_I_SIZE(&file->inode) < file->pos) {
   errcode_t rc;

   rc = ext2fs_file_set_size2(file, file->pos);
   if (retval == 0)
    retval = rc;
  }

  if (written)
   *written = count;
  return 0;
 }

expand:
 retval = ext2fs_inline_data_expand(fs, file->ino);
 if (retval)
  return retval;







 retval = ext2fs_read_inode(fs, file->ino, &file->inode);
 if (retval)
  return retval;
 return EXT2_ET_INLINE_DATA_NO_SPACE;
}
