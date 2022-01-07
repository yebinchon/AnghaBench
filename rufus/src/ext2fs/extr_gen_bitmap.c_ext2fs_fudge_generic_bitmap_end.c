
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ext2fs_inode_bitmap ;
typedef TYPE_1__* ext2fs_generic_bitmap_32 ;
typedef scalar_t__ ext2_ino_t ;
typedef int errcode_t ;
struct TYPE_3__ {scalar_t__ real_end; scalar_t__ end; } ;


 int EXT2_CHECK_MAGIC (TYPE_1__*,int ) ;

errcode_t ext2fs_fudge_generic_bitmap_end(ext2fs_inode_bitmap gen_bitmap,
       errcode_t magic, errcode_t neq,
       ext2_ino_t end, ext2_ino_t *oend)
{
 ext2fs_generic_bitmap_32 bitmap = (ext2fs_generic_bitmap_32) gen_bitmap;

 EXT2_CHECK_MAGIC(bitmap, magic);

 if (end > bitmap->real_end)
  return neq;
 if (oend)
  *oend = bitmap->end;
 bitmap->end = end;
 return 0;
}
