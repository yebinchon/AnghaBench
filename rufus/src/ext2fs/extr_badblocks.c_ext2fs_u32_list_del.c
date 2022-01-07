
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* ext2_u32_list ;
typedef int __u32 ;
struct TYPE_4__ {int num; int * list; } ;


 int ext2fs_u32_list_find (TYPE_1__*,int ) ;

int ext2fs_u32_list_del(ext2_u32_list bb, __u32 blk)
{
 int remloc, i;

 if (bb->num == 0)
  return -1;

 remloc = ext2fs_u32_list_find(bb, blk);
 if (remloc < 0)
  return -1;

 for (i = remloc ; i < bb->num-1; i++)
  bb->list[i] = bb->list[i+1];
 bb->num--;
 return 0;
}
