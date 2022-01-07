
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* ext2_u32_list ;
struct TYPE_4__ {scalar_t__ magic; struct TYPE_4__* list; } ;


 scalar_t__ EXT2_ET_MAGIC_BADBLOCKS_LIST ;
 int ext2fs_free_mem (TYPE_1__**) ;

void ext2fs_u32_list_free(ext2_u32_list bb)
{
 if (bb->magic != EXT2_ET_MAGIC_BADBLOCKS_LIST)
  return;

 if (bb->list)
  ext2fs_free_mem(&bb->list);
 bb->list = 0;
 ext2fs_free_mem(&bb);
}
