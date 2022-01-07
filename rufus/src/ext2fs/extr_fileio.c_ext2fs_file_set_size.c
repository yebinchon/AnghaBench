
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ext2_off_t ;
typedef int ext2_file_t ;
typedef int errcode_t ;


 int ext2fs_file_set_size2 (int ,int ) ;

errcode_t ext2fs_file_set_size(ext2_file_t file, ext2_off_t size)
{
 return ext2fs_file_set_size2(file, size);
}
