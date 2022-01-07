
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ext2fs_inode_bitmap ;
typedef int errcode_t ;
typedef int __u64 ;


 int ext2fs_get_generic_bmap_range (int ,int ,size_t,void*) ;

errcode_t ext2fs_get_inode_bitmap_range2(ext2fs_inode_bitmap bmap,
      __u64 start, size_t num,
      void *out)
{
 return (ext2fs_get_generic_bmap_range(bmap, start, num, out));
}
