
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef TYPE_1__* ext2fs_generic_bitmap_32 ;
typedef int ext2fs_generic_bitmap ;
typedef scalar_t__ __u32 ;
struct TYPE_2__ {scalar_t__ end; scalar_t__ start; scalar_t__ real_end; int bitmap; } ;


 int ext2fs_set_bit (scalar_t__,int ) ;

void ext2fs_set_generic_bitmap_padding(ext2fs_generic_bitmap gen_map)
{
 ext2fs_generic_bitmap_32 map = (ext2fs_generic_bitmap_32) gen_map;
 __u32 i, j;


 for (i=map->end+1, j = i - map->start;
      i <= map->real_end && i > map->end;
      i++, j++)
  ext2fs_set_bit(j, map->bitmap);
}
