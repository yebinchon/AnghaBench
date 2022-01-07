
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ext2fs_inode_bitmap ;
typedef TYPE_1__* ext2fs_generic_bitmap_32 ;
typedef int ext2fs_generic_bitmap ;
typedef int ext2_ino_t ;
struct TYPE_3__ {int start; int real_end; int description; } ;


 int EXT2_CHECK_MAGIC (TYPE_1__*,int ) ;
 int EXT2_ET_BAD_INODE_TEST ;
 int EXT2_ET_MAGIC_INODE_BITMAP ;
 int ext2fs_test_clear_generic_bitmap_range (int ,int,int) ;
 int ext2fs_warn_bitmap (int ,int,int ) ;

int ext2fs_test_inode_bitmap_range(ext2fs_inode_bitmap gen_bitmap,
       ext2_ino_t inode, int num)
{
 ext2fs_generic_bitmap_32 bitmap = (ext2fs_generic_bitmap_32) gen_bitmap;

 EXT2_CHECK_MAGIC(bitmap, EXT2_ET_MAGIC_INODE_BITMAP);
 if ((inode < bitmap->start) || (inode > bitmap->real_end) ||
     (inode+num-1 > bitmap->real_end)) {
  ext2fs_warn_bitmap(EXT2_ET_BAD_INODE_TEST,
       inode, bitmap->description);
  return 0;
 }
 return ext2fs_test_clear_generic_bitmap_range((ext2fs_generic_bitmap)
            bitmap, inode, num);
}
