
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef TYPE_1__* ext2fs_generic_bitmap_32 ;
typedef int ext2fs_generic_bitmap ;
typedef scalar_t__ errcode_t ;
typedef int __u32 ;
struct TYPE_2__ {scalar_t__ magic; int start; int real_end; scalar_t__ bitmap; } ;


 scalar_t__ EXT2_ET_INVALID_ARGUMENT ;
 int memcpy (scalar_t__,void*,int) ;

errcode_t ext2fs_set_generic_bitmap_range(ext2fs_generic_bitmap gen_bmap,
       errcode_t magic,
       __u32 start, __u32 num,
       void *in)
{
 ext2fs_generic_bitmap_32 bmap = (ext2fs_generic_bitmap_32) gen_bmap;

 if (!bmap || (bmap->magic != magic))
  return magic;

 if ((start < bmap->start) || (start+num-1 > bmap->real_end))
  return EXT2_ET_INVALID_ARGUMENT;

 memcpy(bmap->bitmap + (start >> 3), in, (num+7) >> 3);
 return 0;
}
