
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* ext2_u32_list ;
typedef scalar_t__ errcode_t ;
struct TYPE_5__ {int badblocks_flags; int list; int num; int size; } ;


 scalar_t__ make_u32_list (int ,int ,int ,TYPE_1__**) ;

errcode_t ext2fs_u32_copy(ext2_u32_list src, ext2_u32_list *dest)
{
 errcode_t retval;

 retval = make_u32_list(src->size, src->num, src->list, dest);
 if (retval)
  return retval;
 (*dest)->badblocks_flags = src->badblocks_flags;
 return 0;
}
