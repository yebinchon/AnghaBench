
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* ext2fs_generic_bitmap_64 ;
typedef TYPE_2__* ext2fs_ba_private ;
struct TYPE_5__ {int bitarray; } ;
struct TYPE_4__ {int real_end; int start; int private; } ;


 int memset (int ,int ,size_t) ;

__attribute__((used)) static void ba_clear_bmap(ext2fs_generic_bitmap_64 bitmap)
{
 ext2fs_ba_private bp = (ext2fs_ba_private) bitmap->private;

 memset(bp->bitarray, 0,
        (size_t) (((bitmap->real_end - bitmap->start) / 8) + 1));
}
