
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef TYPE_1__* ext2fs_generic_bitmap_64 ;
typedef scalar_t__ ext2fs_generic_bitmap ;
typedef scalar_t__ ext2fs_block_bitmap ;
typedef TYPE_2__* ext2_filsys ;
typedef scalar_t__ errcode_t ;
typedef int __u64 ;
struct TYPE_11__ {int s_first_data_block; } ;
struct TYPE_10__ {int flags; int default_bitmap_type; scalar_t__ group_desc_count; TYPE_3__* super; int cluster_ratio_bits; int write_bitmaps; } ;
struct TYPE_9__ {scalar_t__ cluster_bits; } ;


 scalar_t__ EXT2_BLOCKS_PER_GROUP (TYPE_3__*) ;
 int EXT2_CHECK_MAGIC (TYPE_2__*,int ) ;
 scalar_t__ EXT2_ET_CANT_USE_LEGACY_BITMAPS ;
 int EXT2_ET_MAGIC_BLOCK_BITMAP64 ;
 int EXT2_ET_MAGIC_EXT2FS_FILSYS ;
 int EXT2_FLAG_64BITS ;
 scalar_t__ ext2fs_alloc_generic_bmap (TYPE_2__*,int ,int ,int,int,int,char const*,scalar_t__*) ;
 scalar_t__ ext2fs_allocate_block_bitmap (TYPE_2__*,char const*,scalar_t__*) ;
 int ext2fs_blocks_count (TYPE_3__*) ;
 int ext2fs_write_bitmaps ;

errcode_t ext2fs_allocate_subcluster_bitmap(ext2_filsys fs,
         const char *descr,
         ext2fs_block_bitmap *ret)
{
 __u64 start, end, real_end;
 ext2fs_generic_bitmap bmap;
 ext2fs_generic_bitmap_64 bmap64;
 errcode_t retval;

 EXT2_CHECK_MAGIC(fs, EXT2_ET_MAGIC_EXT2FS_FILSYS);

 fs->write_bitmaps = ext2fs_write_bitmaps;

 if (!fs->cluster_ratio_bits)
  return ext2fs_allocate_block_bitmap(fs, descr, ret);

 if ((fs->flags & EXT2_FLAG_64BITS) == 0)
  return EXT2_ET_CANT_USE_LEGACY_BITMAPS;

 start = fs->super->s_first_data_block;
 end = ext2fs_blocks_count(fs->super)-1;
 real_end = ((__u64) EXT2_BLOCKS_PER_GROUP(fs->super)
      * (__u64) fs->group_desc_count)-1 + start;

 retval = ext2fs_alloc_generic_bmap(fs, EXT2_ET_MAGIC_BLOCK_BITMAP64,
        fs->default_bitmap_type, start,
        end, real_end, descr, &bmap);
 if (retval)
  return retval;
 bmap64 = (ext2fs_generic_bitmap_64) bmap;
 bmap64->cluster_bits = 0;
 *ret = bmap;
 return 0;
}
