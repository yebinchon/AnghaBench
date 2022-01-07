
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* ext2fs_generic_bitmap_64 ;
typedef TYPE_2__* ext2fs_ba_private ;
typedef int errcode_t ;
typedef int __u64 ;
struct TYPE_5__ {scalar_t__ bitarray; } ;
struct TYPE_4__ {int private; } ;


 int memcpy (scalar_t__,void*,size_t) ;

__attribute__((used)) static errcode_t ba_set_bmap_range(ext2fs_generic_bitmap_64 bitmap,
         __u64 start, size_t num, void *in)
{
 ext2fs_ba_private bp = (ext2fs_ba_private) bitmap->private;

 memcpy (bp->bitarray + (start >> 3), in, (num + 7) >> 3);

 return 0;
}
