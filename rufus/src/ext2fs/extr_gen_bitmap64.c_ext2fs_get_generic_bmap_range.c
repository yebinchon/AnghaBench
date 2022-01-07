
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_2__* ext2fs_generic_bitmap_64 ;
typedef int ext2fs_generic_bitmap ;
typedef int errcode_t ;
typedef int __u64 ;
struct TYPE_8__ {TYPE_1__* bitmap_ops; int magic; } ;
struct TYPE_7__ {int (* get_bmap_range ) (TYPE_2__*,int ,unsigned int,void*) ;} ;


 int EINVAL ;
 scalar_t__ EXT2FS_IS_32_BITMAP (TYPE_2__*) ;
 int EXT2FS_IS_64_BITMAP (TYPE_2__*) ;
 int EXT2FS_UNMARK_ERROR ;
 int INC_STAT (TYPE_2__*,int ) ;
 int ext2fs_get_generic_bitmap_range (int ,int ,int ,unsigned int,void*) ;
 int ext2fs_warn_bitmap2 (int ,int ,int) ;
 int get_range_count ;
 int stub1 (TYPE_2__*,int ,unsigned int,void*) ;

errcode_t ext2fs_get_generic_bmap_range(ext2fs_generic_bitmap gen_bmap,
     __u64 start, unsigned int num,
     void *out)
{
 ext2fs_generic_bitmap_64 bmap = (ext2fs_generic_bitmap_64) gen_bmap;

 if (!bmap)
  return EINVAL;

 if (EXT2FS_IS_32_BITMAP(bmap)) {
  if ((start+num-1) & ~0xffffffffULL) {
   ext2fs_warn_bitmap2(gen_bmap,
         EXT2FS_UNMARK_ERROR, 0xffffffff);
   return EINVAL;
  }
  return ext2fs_get_generic_bitmap_range(gen_bmap, bmap->magic,
             start, num, out);
 }

 if (!EXT2FS_IS_64_BITMAP(bmap))
  return EINVAL;

 INC_STAT(bmap, get_range_count);

 return bmap->bitmap_ops->get_bmap_range(bmap, start, num, out);
}
