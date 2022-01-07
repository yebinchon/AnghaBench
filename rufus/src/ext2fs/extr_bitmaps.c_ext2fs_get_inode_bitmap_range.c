
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ext2fs_inode_bitmap ;
typedef int ext2_ino_t ;
typedef int errcode_t ;


 int EXT2_ET_MAGIC_INODE_BITMAP ;
 int ext2fs_get_generic_bitmap_range (int ,int ,int ,unsigned int,void*) ;

errcode_t ext2fs_get_inode_bitmap_range(ext2fs_inode_bitmap bmap,
     ext2_ino_t start, unsigned int num,
     void *out)
{
 return (ext2fs_get_generic_bitmap_range(bmap,
      EXT2_ET_MAGIC_INODE_BITMAP,
      start, num, out));
}
