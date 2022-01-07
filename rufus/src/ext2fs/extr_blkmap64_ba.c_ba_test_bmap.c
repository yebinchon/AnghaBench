
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* ext2fs_generic_bitmap_64 ;
typedef TYPE_2__* ext2fs_ba_private ;
typedef scalar_t__ blk64_t ;
typedef int __u64 ;
struct TYPE_5__ {int bitarray; } ;
struct TYPE_4__ {scalar_t__ start; int private; } ;


 int ext2fs_test_bit64 (scalar_t__,int ) ;

__attribute__((used)) static int ba_test_bmap(ext2fs_generic_bitmap_64 bitmap, __u64 arg)
{
 ext2fs_ba_private bp = (ext2fs_ba_private) bitmap->private;
 blk64_t bitno = (blk64_t) arg;

 return ext2fs_test_bit64(bitno - bitmap->start, bp->bitarray);
}
