
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef TYPE_2__* ext2fs_generic_bitmap_64 ;
typedef TYPE_3__* ext2fs_generic_bitmap ;
typedef int errcode_t ;
typedef int __u64 ;
struct TYPE_12__ {int magic; } ;
struct TYPE_11__ {TYPE_1__* bitmap_ops; } ;
struct TYPE_10__ {int (* resize_bmap ) (TYPE_2__*,int ,int ) ;} ;


 int EINVAL ;
 scalar_t__ EXT2FS_IS_32_BITMAP (TYPE_2__*) ;
 int EXT2FS_IS_64_BITMAP (TYPE_2__*) ;
 int INC_STAT (TYPE_2__*,int ) ;
 int ext2fs_resize_generic_bitmap (int ,int ,int ,TYPE_3__*) ;
 int resize_count ;
 int stub1 (TYPE_2__*,int ,int ) ;

errcode_t ext2fs_resize_generic_bmap(ext2fs_generic_bitmap gen_bmap,
         __u64 new_end,
         __u64 new_real_end)
{
 ext2fs_generic_bitmap_64 bmap = (ext2fs_generic_bitmap_64) gen_bmap;

 if (!bmap)
  return EINVAL;

 if (EXT2FS_IS_32_BITMAP(bmap))
  return ext2fs_resize_generic_bitmap(gen_bmap->magic, new_end,
          new_real_end, gen_bmap);

 if (!EXT2FS_IS_64_BITMAP(bmap))
  return EINVAL;

 INC_STAT(bmap, resize_count);

 return bmap->bitmap_ops->resize_bmap(bmap, new_end, new_real_end);
}
