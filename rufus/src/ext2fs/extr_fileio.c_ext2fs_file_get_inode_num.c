
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ext2_ino_t ;
typedef TYPE_1__* ext2_file_t ;
struct TYPE_3__ {scalar_t__ magic; int ino; } ;


 scalar_t__ EXT2_ET_MAGIC_EXT2_FILE ;

ext2_ino_t ext2fs_file_get_inode_num(ext2_file_t file)
{
 if (file->magic != EXT2_ET_MAGIC_EXT2_FILE)
  return 0;
 return file->ino;
}
