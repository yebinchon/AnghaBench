
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* ext2fs_generic_bitmap_64 ;
typedef int ext2fs_generic_bitmap ;
typedef int __u64 ;
struct TYPE_4__ {int end; } ;


 int EINVAL ;
 scalar_t__ EXT2FS_IS_32_BITMAP (TYPE_1__*) ;
 int EXT2FS_IS_64_BITMAP (TYPE_1__*) ;
 int ext2fs_get_generic_bitmap_end (int ) ;

__u64 ext2fs_get_generic_bmap_end(ext2fs_generic_bitmap gen_bitmap)
{
 ext2fs_generic_bitmap_64 bitmap = (ext2fs_generic_bitmap_64) gen_bitmap;

 if (!bitmap)
  return EINVAL;

 if (EXT2FS_IS_32_BITMAP(bitmap))
  return ext2fs_get_generic_bitmap_end(gen_bitmap);

 if (!EXT2FS_IS_64_BITMAP(bitmap))
  return EINVAL;

 return bitmap->end;
}
