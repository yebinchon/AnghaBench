
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_3__* ext2fs_generic_bitmap_64 ;
typedef int ext2fs_generic_bitmap ;
typedef int __u64 ;
struct TYPE_8__ {int last_marked; int mark_count; int mark_back; int mark_seq; } ;
struct TYPE_10__ {int cluster_bits; int start; int end; TYPE_2__* bitmap_ops; TYPE_1__ stats; } ;
struct TYPE_9__ {int (* mark_bmap ) (TYPE_3__*,int) ;} ;


 scalar_t__ EXT2FS_IS_32_BITMAP (TYPE_3__*) ;
 int EXT2FS_IS_64_BITMAP (TYPE_3__*) ;
 int EXT2FS_MARK_ERROR ;
 int ext2fs_mark_generic_bitmap (int ,int) ;
 int ext2fs_warn_bitmap2 (int ,int ,int) ;
 int stub1 (TYPE_3__*,int) ;
 int warn_bitmap (TYPE_3__*,int ,int) ;

int ext2fs_mark_generic_bmap(ext2fs_generic_bitmap gen_bitmap,
        __u64 arg)
{
 ext2fs_generic_bitmap_64 bitmap = (ext2fs_generic_bitmap_64) gen_bitmap;

 if (!bitmap)
  return 0;

 if (EXT2FS_IS_32_BITMAP(bitmap)) {
  if (arg & ~0xffffffffULL) {
   ext2fs_warn_bitmap2(gen_bitmap,
         EXT2FS_MARK_ERROR, 0xffffffff);
   return 0;
  }
  return ext2fs_mark_generic_bitmap(gen_bitmap, arg);
 }

 if (!EXT2FS_IS_64_BITMAP(bitmap))
  return 0;

 arg >>= bitmap->cluster_bits;
 if ((arg < bitmap->start) || (arg > bitmap->end)) {
  warn_bitmap(bitmap, EXT2FS_MARK_ERROR, arg);
  return 0;
 }

 return bitmap->bitmap_ops->mark_bmap(bitmap, arg);
}
