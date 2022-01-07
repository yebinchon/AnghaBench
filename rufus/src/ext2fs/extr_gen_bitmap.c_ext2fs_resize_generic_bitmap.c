
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef TYPE_1__* ext2fs_generic_bitmap_32 ;
typedef int ext2fs_generic_bitmap ;
typedef scalar_t__ errcode_t ;
typedef scalar_t__ __u32 ;
struct TYPE_2__ {scalar_t__ magic; scalar_t__ end; scalar_t__ real_end; scalar_t__ start; scalar_t__ bitmap; } ;


 int ext2fs_clear_bit (scalar_t__,scalar_t__) ;
 scalar_t__ ext2fs_resize_mem (size_t,size_t,scalar_t__*) ;
 int memset (scalar_t__,int ,size_t) ;

errcode_t ext2fs_resize_generic_bitmap(errcode_t magic,
           __u32 new_end, __u32 new_real_end,
           ext2fs_generic_bitmap gen_bmap)
{
 ext2fs_generic_bitmap_32 bmap = (ext2fs_generic_bitmap_32) gen_bmap;
 errcode_t retval;
 size_t size, new_size;
 __u32 bitno;

 if (!bmap || (bmap->magic != magic))
  return magic;





 if (new_end > bmap->end) {
  bitno = bmap->real_end;
  if (bitno > new_end)
   bitno = new_end;
  for (; bitno > bmap->end; bitno--)
   ext2fs_clear_bit(bitno - bmap->start, bmap->bitmap);
 }
 if (new_real_end == bmap->real_end) {
  bmap->end = new_end;
  return 0;
 }

 size = ((bmap->real_end - bmap->start) / 8) + 1;
 new_size = ((new_real_end - bmap->start) / 8) + 1;

 if (size != new_size) {
  retval = ext2fs_resize_mem(size, new_size, &bmap->bitmap);
  if (retval)
   return retval;
 }
 if (new_size > size)
  memset(bmap->bitmap + size, 0, new_size - size);

 bmap->end = new_end;
 bmap->real_end = new_real_end;
 return 0;
}
