
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* ext2fs_generic_bitmap_64 ;
typedef int ext2fs_generic_bitmap ;
typedef scalar_t__ ext2_ino_t ;
typedef int errcode_t ;
typedef scalar_t__ __u64 ;
struct TYPE_4__ {scalar_t__ real_end; scalar_t__ end; int magic; } ;


 int EINVAL ;
 scalar_t__ EXT2FS_IS_32_BITMAP (TYPE_1__*) ;
 int EXT2FS_IS_64_BITMAP (TYPE_1__*) ;
 int ext2fs_fudge_generic_bitmap_end (int ,int ,int,scalar_t__,scalar_t__*) ;

errcode_t ext2fs_fudge_generic_bmap_end(ext2fs_generic_bitmap gen_bitmap,
     errcode_t neq,
     __u64 end, __u64 *oend)
{
 ext2fs_generic_bitmap_64 bitmap = (ext2fs_generic_bitmap_64) gen_bitmap;

 if (!bitmap)
  return EINVAL;

 if (EXT2FS_IS_32_BITMAP(bitmap)) {
  ext2_ino_t tmp_oend;
  int retval;

  retval = ext2fs_fudge_generic_bitmap_end(gen_bitmap,
        bitmap->magic,
        neq, end, &tmp_oend);
  if (oend)
   *oend = tmp_oend;
  return retval;
 }

 if (!EXT2FS_IS_64_BITMAP(bitmap))
  return EINVAL;

 if (end > bitmap->real_end)
  return neq;
 if (oend)
  *oend = bitmap->end;
 bitmap->end = end;
 return 0;
}
