
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ext2_inode {int dummy; } ;
typedef TYPE_1__* ext2_file_t ;
struct TYPE_3__ {scalar_t__ magic; struct ext2_inode inode; } ;


 scalar_t__ EXT2_ET_MAGIC_EXT2_FILE ;

struct ext2_inode *ext2fs_file_get_inode(ext2_file_t file)
{
 if (file->magic != EXT2_ET_MAGIC_EXT2_FILE)
  return ((void*)0);
 return &file->inode;
}
