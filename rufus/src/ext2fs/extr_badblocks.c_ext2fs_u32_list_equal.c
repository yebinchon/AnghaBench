
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* ext2_u32_list ;
typedef int blk_t ;
struct TYPE_5__ {int num; int list; } ;


 int EXT2_CHECK_MAGIC (TYPE_1__*,int ) ;
 int EXT2_ET_MAGIC_BADBLOCKS_LIST ;
 scalar_t__ memcmp (int ,int ,int) ;

int ext2fs_u32_list_equal(ext2_u32_list bb1, ext2_u32_list bb2)
{
 EXT2_CHECK_MAGIC(bb1, EXT2_ET_MAGIC_BADBLOCKS_LIST);
 EXT2_CHECK_MAGIC(bb2, EXT2_ET_MAGIC_BADBLOCKS_LIST);

 if (bb1->num != bb2->num)
  return 0;

 if (memcmp(bb1->list, bb2->list, bb1->num * sizeof(blk_t)) != 0)
  return 0;
 return 1;
}
