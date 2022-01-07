
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ext2fs_generic_bitmap ;
typedef int errcode_t ;


 int ext2fs_copy_generic_bmap (int ,int *) ;

errcode_t ext2fs_copy_bitmap(ext2fs_generic_bitmap src,
        ext2fs_generic_bitmap *dest)
{
 return (ext2fs_copy_generic_bmap(src, dest));
}
