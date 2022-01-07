
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef TYPE_2__* ext2fs_generic_bitmap_64 ;
typedef int ext2fs_generic_bitmap ;
struct TYPE_10__ {scalar_t__ magic; struct TYPE_10__* description; TYPE_1__* bitmap_ops; } ;
struct TYPE_9__ {int (* free_bmap ) (TYPE_2__*) ;int (* print_stats ) (TYPE_2__*) ;} ;


 scalar_t__ EXT2FS_IS_32_BITMAP (TYPE_2__*) ;
 int EXT2FS_IS_64_BITMAP (TYPE_2__*) ;
 int ext2fs_free_generic_bitmap (int ) ;
 int ext2fs_free_mem (TYPE_2__**) ;
 int ext2fs_print_bmap_statistics (TYPE_2__*) ;
 scalar_t__ getenv (char*) ;
 int stub1 (TYPE_2__*) ;
 int stub2 (TYPE_2__*) ;

void ext2fs_free_generic_bmap(ext2fs_generic_bitmap gen_bmap)
{
 ext2fs_generic_bitmap_64 bmap = (ext2fs_generic_bitmap_64) gen_bmap;

 if (!bmap)
  return;

 if (EXT2FS_IS_32_BITMAP(bmap)) {
  ext2fs_free_generic_bitmap(gen_bmap);
  return;
 }

 if (!EXT2FS_IS_64_BITMAP(bmap))
  return;
 bmap->bitmap_ops->free_bmap(bmap);

 if (bmap->description) {
  ext2fs_free_mem(&bmap->description);
  bmap->description = 0;
 }
 bmap->magic = 0;
 ext2fs_free_mem(&bmap);
}
