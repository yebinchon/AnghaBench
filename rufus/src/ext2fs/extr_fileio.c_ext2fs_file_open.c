
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ext2_ino_t ;
typedef int ext2_filsys ;
typedef int ext2_file_t ;
typedef int errcode_t ;


 int ext2fs_file_open2 (int ,int ,int *,int,int *) ;

errcode_t ext2fs_file_open(ext2_filsys fs, ext2_ino_t ino,
      int flags, ext2_file_t *ret)
{
 return ext2fs_file_open2(fs, ino, ((void*)0), flags, ret);
}
