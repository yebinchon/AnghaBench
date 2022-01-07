
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_2__* ext2fs_generic_bitmap_64 ;
typedef int ext2fs_generic_bitmap ;
typedef scalar_t__ __u64 ;
struct TYPE_6__ {TYPE_1__* bitmap_ops; scalar_t__ end; scalar_t__ real_end; } ;
struct TYPE_5__ {int (* mark_bmap_extent ) (TYPE_2__*,scalar_t__,scalar_t__) ;} ;


 scalar_t__ EXT2FS_IS_32_BITMAP (TYPE_2__*) ;
 int ext2fs_set_generic_bitmap_padding (int ) ;
 int stub1 (TYPE_2__*,scalar_t__,scalar_t__) ;

void ext2fs_set_generic_bmap_padding(ext2fs_generic_bitmap gen_bmap)
{
 ext2fs_generic_bitmap_64 bmap = (ext2fs_generic_bitmap_64) gen_bmap;
 __u64 start, num;

 if (EXT2FS_IS_32_BITMAP(bmap)) {
  ext2fs_set_generic_bitmap_padding(gen_bmap);
  return;
 }

 start = bmap->end + 1;
 num = bmap->real_end - bmap->end;
 bmap->bitmap_ops->mark_bmap_extent(bmap, start, num);

}
