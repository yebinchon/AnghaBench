
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* ext2_file_t ;
typedef int errcode_t ;
struct TYPE_6__ {struct TYPE_6__* buf; } ;


 int EXT2_CHECK_MAGIC (TYPE_1__*,int ) ;
 int EXT2_ET_MAGIC_EXT2_FILE ;
 int ext2fs_file_flush (TYPE_1__*) ;
 int ext2fs_free_mem (TYPE_1__**) ;

errcode_t ext2fs_file_close(ext2_file_t file)
{
 errcode_t retval;

 EXT2_CHECK_MAGIC(file, EXT2_ET_MAGIC_EXT2_FILE);

 retval = ext2fs_file_flush(file);

 if (file->buf)
  ext2fs_free_mem(&file->buf);
 ext2fs_free_mem(&file);

 return retval;
}
