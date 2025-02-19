
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* ext2fs_generic_bitmap_64 ;
typedef TYPE_2__* ext2fs_ba_private ;
typedef scalar_t__ errcode_t ;
struct TYPE_7__ {struct TYPE_7__* bitarray; } ;
struct TYPE_6__ {int real_end; int start; void* private; } ;


 int ext2fs_free_mem (TYPE_2__**) ;
 scalar_t__ ext2fs_get_mem (size_t,TYPE_2__**) ;

__attribute__((used)) static errcode_t ba_alloc_private_data (ext2fs_generic_bitmap_64 bitmap)
{
 ext2fs_ba_private bp;
 errcode_t retval;
 size_t size;







 retval = ext2fs_get_mem(sizeof (ext2fs_ba_private), &bp);
 if (retval)
  return retval;

 size = (size_t) (((bitmap->real_end - bitmap->start) / 8) + 1);

 retval = ext2fs_get_mem(size, &bp->bitarray);
 if (retval) {
  ext2fs_free_mem(&bp);
  bp = 0;
  return retval;
 }
 bitmap->private = (void *) bp;
 return 0;
}
