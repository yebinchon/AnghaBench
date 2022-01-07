
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef TYPE_1__* ext2fs_generic_bitmap_64 ;
typedef int ext2fs_generic_bitmap ;
struct TYPE_2__ {scalar_t__ description; } ;


 int EXT2_ET_MAGIC_GENERIC_BITMAP ;
 int com_err (int ,int ,char*,char const*,...) ;

void ext2fs_warn_bitmap32(ext2fs_generic_bitmap gen_bitmap, const char *func)
{
 ext2fs_generic_bitmap_64 bitmap = (ext2fs_generic_bitmap_64) gen_bitmap;


 if (bitmap && bitmap->description)
  com_err(0, EXT2_ET_MAGIC_GENERIC_BITMAP,
   "called %s with 64-bit bitmap for %s", func,
   bitmap->description);
 else
  com_err(0, EXT2_ET_MAGIC_GENERIC_BITMAP,
   "called %s with 64-bit bitmap", func);

}
