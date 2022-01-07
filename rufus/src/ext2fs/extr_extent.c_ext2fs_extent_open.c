
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ext2_ino_t ;
typedef int ext2_filsys ;
typedef int ext2_extent_handle_t ;
typedef int errcode_t ;


 int ext2fs_extent_open2 (int ,int ,int *,int *) ;

errcode_t ext2fs_extent_open(ext2_filsys fs, ext2_ino_t ino,
        ext2_extent_handle_t *ret_handle)
{
 return ext2fs_extent_open2(fs, ino, ((void*)0), ret_handle);
}
