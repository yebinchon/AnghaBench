
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ext2_filsys ;
typedef TYPE_1__* ext2_file_t ;
struct TYPE_3__ {scalar_t__ magic; int fs; } ;


 scalar_t__ EXT2_ET_MAGIC_EXT2_FILE ;

ext2_filsys ext2fs_file_get_fs(ext2_file_t file)
{
 if (file->magic != EXT2_ET_MAGIC_EXT2_FILE)
  return 0;
 return file->fs;
}
