
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct ext2_struct_u32_list {int dummy; } ;
typedef TYPE_1__* ext2_u32_list ;
typedef scalar_t__ errcode_t ;
typedef int blk_t ;
typedef int __u32 ;
struct TYPE_8__ {int size; int num; struct TYPE_8__* list; int magic; } ;


 int EXT2_ET_MAGIC_BADBLOCKS_LIST ;
 int ext2fs_free_mem (TYPE_1__**) ;
 scalar_t__ ext2fs_get_array (int,int,TYPE_1__**) ;
 scalar_t__ ext2fs_get_mem (int,TYPE_1__**) ;
 int memcpy (TYPE_1__*,int *,int) ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static errcode_t make_u32_list(int size, int num, __u32 *list,
          ext2_u32_list *ret)
{
 ext2_u32_list bb;
 errcode_t retval;

 retval = ext2fs_get_mem(sizeof(struct ext2_struct_u32_list), &bb);
 if (retval)
  return retval;
 memset(bb, 0, sizeof(struct ext2_struct_u32_list));
 bb->magic = EXT2_ET_MAGIC_BADBLOCKS_LIST;
 bb->size = size ? size : 10;
 bb->num = num;
 retval = ext2fs_get_array(bb->size, sizeof(blk_t), &bb->list);
 if (retval) {
  ext2fs_free_mem(&bb);
  return retval;
 }
 if (list)
  memcpy(bb->list, list, bb->size * sizeof(blk_t));
 else
  memset(bb->list, 0, bb->size * sizeof(blk_t));
 *ret = bb;
 return 0;
}
