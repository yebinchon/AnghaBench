
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* ext2_u32_iterate ;
struct TYPE_4__ {scalar_t__ magic; scalar_t__ bb; } ;


 scalar_t__ EXT2_ET_MAGIC_BADBLOCKS_ITERATE ;
 int ext2fs_free_mem (TYPE_1__**) ;

void ext2fs_u32_list_iterate_end(ext2_u32_iterate iter)
{
 if (!iter || (iter->magic != EXT2_ET_MAGIC_BADBLOCKS_ITERATE))
  return;

 iter->bb = 0;
 ext2fs_free_mem(&iter);
}
