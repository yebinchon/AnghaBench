
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* ext2_inode_scan ;
struct TYPE_4__ {scalar_t__ magic; struct TYPE_4__* temp_buffer; struct TYPE_4__* inode_buffer; } ;


 scalar_t__ EXT2_ET_MAGIC_INODE_SCAN ;
 int ext2fs_free_mem (TYPE_1__**) ;

void ext2fs_close_inode_scan(ext2_inode_scan scan)
{
 if (!scan || (scan->magic != EXT2_ET_MAGIC_INODE_SCAN))
  return;

 ext2fs_free_mem(&scan->inode_buffer);
 scan->inode_buffer = ((void*)0);
 ext2fs_free_mem(&scan->temp_buffer);
 scan->temp_buffer = ((void*)0);
 ext2fs_free_mem(&scan);
 return;
}
