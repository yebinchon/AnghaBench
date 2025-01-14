
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* ext2_u32_list ;
typedef scalar_t__ errcode_t ;
typedef scalar_t__ __u32 ;
struct TYPE_4__ {int num; int size; scalar_t__* list; } ;


 int EXT2_CHECK_MAGIC (TYPE_1__*,int ) ;
 int EXT2_ET_MAGIC_BADBLOCKS_LIST ;
 scalar_t__ ext2fs_resize_mem (unsigned long,int,scalar_t__**) ;

errcode_t ext2fs_u32_list_add(ext2_u32_list bb, __u32 blk)
{
 errcode_t retval;
 int i, j;
 unsigned long old_size;

 EXT2_CHECK_MAGIC(bb, EXT2_ET_MAGIC_BADBLOCKS_LIST);

 if (bb->num >= bb->size) {
  old_size = bb->size * sizeof(__u32);
  bb->size += 100;
  retval = ext2fs_resize_mem(old_size, bb->size * sizeof(__u32),
        &bb->list);
  if (retval) {
   bb->size -= 100;
   return retval;
  }
 }




 i = bb->num-1;
 if ((bb->num != 0) && (bb->list[i] == blk))
  return 0;
 if ((bb->num == 0) || (bb->list[i] < blk)) {
  bb->list[bb->num++] = blk;
  return 0;
 }

 j = bb->num;
 for (i=0; i < bb->num; i++) {
  if (bb->list[i] == blk)
   return 0;
  if (bb->list[i] > blk) {
   j = i;
   break;
  }
 }
 for (i=bb->num; i > j; i--)
  bb->list[i] = bb->list[i-1];
 bb->list[j] = blk;
 bb->num++;
 return 0;
}
