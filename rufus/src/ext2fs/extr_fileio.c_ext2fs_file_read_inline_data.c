
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ext2_filsys ;
typedef TYPE_1__* ext2_file_t ;
typedef scalar_t__ errcode_t ;
struct TYPE_3__ {size_t pos; int buf; int inode; int ino; int fs; } ;


 scalar_t__ ext2fs_inline_data_get (int ,int ,int *,int ,size_t*) ;
 int memcpy (void*,int ,unsigned int) ;

__attribute__((used)) static errcode_t
ext2fs_file_read_inline_data(ext2_file_t file, void *buf,
        unsigned int wanted, unsigned int *got)
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

 if (file->pos >= size)
  goto out;

 count = size - file->pos;
 if (count > wanted)
  count = wanted;
 memcpy(buf, file->buf + file->pos, count);
 file->pos += count;
 buf = (char *) buf + count;

out:
 if (got)
  *got = count;
 return retval;
}
