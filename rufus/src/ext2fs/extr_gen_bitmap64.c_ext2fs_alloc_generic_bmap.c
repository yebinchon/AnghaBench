
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct timezone {int dummy; } ;
struct ext2fs_struct_generic_bitmap_64 {int dummy; } ;
struct ext2_bitmap_ops {int (* new_bmap ) (TYPE_4__*,TYPE_3__*) ;} ;
typedef TYPE_3__* ext2fs_generic_bitmap_64 ;
typedef scalar_t__ ext2fs_generic_bitmap ;
typedef int ext2_ino_t ;
typedef TYPE_4__* ext2_filsys ;
typedef int errcode_t ;
typedef void* __u64 ;
struct TYPE_16__ {scalar_t__ cluster_ratio_bits; TYPE_1__* super; } ;
struct TYPE_14__ {int type; int created; } ;
struct TYPE_15__ {int magic; struct TYPE_15__* description; struct ext2_bitmap_ops* bitmap_ops; int base_error_code; scalar_t__ cluster_bits; void* real_end; void* end; void* start; TYPE_4__* fs; TYPE_2__ stats; } ;
struct TYPE_13__ {int s_inodes_count; } ;


 int EINVAL ;



 int EXT2_ET_BAD_BLOCK_MARK ;
 int EXT2_ET_BAD_GENERIC_MARK ;
 int EXT2_ET_BAD_INODE_MARK ;


 struct ext2_bitmap_ops ext2fs_blkmap64_bitarray ;
 struct ext2_bitmap_ops ext2fs_blkmap64_rbtree ;
 int ext2fs_free_mem (TYPE_3__**) ;
 int ext2fs_get_mem (scalar_t__,TYPE_3__**) ;
 int ext2fs_get_memzero (int,TYPE_3__**) ;
 int ext2fs_get_num_dirs (TYPE_4__*,int*) ;
 int gettimeofday (int *,struct timezone*) ;
 int perror (char*) ;
 int strcpy (TYPE_3__*,char const*) ;
 scalar_t__ strlen (char const*) ;
 int stub1 (TYPE_4__*,TYPE_3__*) ;

errcode_t ext2fs_alloc_generic_bmap(ext2_filsys fs, errcode_t magic,
        int type, __u64 start, __u64 end,
        __u64 real_end,
        const char *descr,
        ext2fs_generic_bitmap *ret)
{
 ext2fs_generic_bitmap_64 bitmap;
 struct ext2_bitmap_ops *ops;
 ext2_ino_t num_dirs;
 errcode_t retval;

 if (!type)
  type = 131;

 switch (type) {
 case 131:
  ops = &ext2fs_blkmap64_bitarray;
  break;
 case 130:
  ops = &ext2fs_blkmap64_rbtree;
  break;
 case 132:
  retval = ext2fs_get_num_dirs(fs, &num_dirs);
  if (retval || num_dirs > (fs->super->s_inodes_count / 320))
   ops = &ext2fs_blkmap64_bitarray;
  else
   ops = &ext2fs_blkmap64_rbtree;
  break;
 default:
  return EINVAL;
 }

 retval = ext2fs_get_memzero(sizeof(struct ext2fs_struct_generic_bitmap_64),
        &bitmap);
 if (retval)
  return retval;
 bitmap->magic = magic;
 bitmap->fs = fs;
 bitmap->start = start;
 bitmap->end = end;
 bitmap->real_end = real_end;
 bitmap->bitmap_ops = ops;
 bitmap->cluster_bits = 0;
 switch (magic) {
 case 128:
  bitmap->base_error_code = EXT2_ET_BAD_INODE_MARK;
  break;
 case 129:
  bitmap->base_error_code = EXT2_ET_BAD_BLOCK_MARK;
  bitmap->cluster_bits = fs->cluster_ratio_bits;
  break;
 default:
  bitmap->base_error_code = EXT2_ET_BAD_GENERIC_MARK;
 }
 if (descr) {
  retval = ext2fs_get_mem(strlen(descr)+1, &bitmap->description);
  if (retval) {
   ext2fs_free_mem(&bitmap);
   return retval;
  }
  strcpy(bitmap->description, descr);
 } else
  bitmap->description = 0;

 retval = bitmap->bitmap_ops->new_bmap(fs, bitmap);
 if (retval) {
  ext2fs_free_mem(&bitmap->description);
  ext2fs_free_mem(&bitmap);
  return retval;
 }

 *ret = (ext2fs_generic_bitmap) bitmap;
 return 0;
}
