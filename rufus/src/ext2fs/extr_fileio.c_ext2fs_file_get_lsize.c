
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* ext2_file_t ;
typedef scalar_t__ errcode_t ;
typedef int __u64 ;
struct TYPE_3__ {scalar_t__ magic; int inode; } ;


 scalar_t__ EXT2_ET_MAGIC_EXT2_FILE ;
 int EXT2_I_SIZE (int *) ;

errcode_t ext2fs_file_get_lsize(ext2_file_t file, __u64 *ret_size)
{
 if (file->magic != EXT2_ET_MAGIC_EXT2_FILE)
  return EXT2_ET_MAGIC_EXT2_FILE;
 *ret_size = EXT2_I_SIZE(&file->inode);
 return 0;
}
