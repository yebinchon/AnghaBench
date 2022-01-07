
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* ext2fs_generic_bitmap_64 ;
typedef TYPE_2__* ext2fs_ba_private ;
typedef scalar_t__ errcode_t ;
struct TYPE_7__ {int bitarray; } ;
struct TYPE_6__ {int real_end; int start; scalar_t__ private; } ;


 scalar_t__ ba_alloc_private_data (TYPE_1__*) ;
 int memcpy (int ,int ,size_t) ;

__attribute__((used)) static errcode_t ba_copy_bmap(ext2fs_generic_bitmap_64 src,
         ext2fs_generic_bitmap_64 dest)
{
 ext2fs_ba_private src_bp = (ext2fs_ba_private) src->private;
 ext2fs_ba_private dest_bp;
 errcode_t retval;
 size_t size;

 retval = ba_alloc_private_data (dest);
 if (retval)
  return retval;

 dest_bp = (ext2fs_ba_private) dest->private;

 size = (size_t) (((src->real_end - src->start) / 8) + 1);
 memcpy (dest_bp->bitarray, src_bp->bitarray, size);

 return 0;
}
