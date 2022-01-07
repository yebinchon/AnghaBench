
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_2__* ext2fs_generic_bitmap_64 ;
typedef int ext2fs_generic_bitmap ;
struct TYPE_6__ {TYPE_1__* bitmap_ops; } ;
struct TYPE_5__ {int (* clear_bmap ) (TYPE_2__*) ;} ;


 scalar_t__ EXT2FS_IS_32_BITMAP (TYPE_2__*) ;
 int ext2fs_clear_generic_bitmap (int ) ;
 int stub1 (TYPE_2__*) ;

void ext2fs_clear_generic_bmap(ext2fs_generic_bitmap gen_bitmap)
{
 ext2fs_generic_bitmap_64 bitmap = (ext2fs_generic_bitmap_64) gen_bitmap;

 if (EXT2FS_IS_32_BITMAP(bitmap))
  ext2fs_clear_generic_bitmap(gen_bitmap);
 else
  bitmap->bitmap_ops->clear_bmap(bitmap);
}
