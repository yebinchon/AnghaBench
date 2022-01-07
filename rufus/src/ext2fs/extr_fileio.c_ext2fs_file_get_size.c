
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ext2_off_t ;
typedef int ext2_file_t ;
typedef int __u64 ;


 scalar_t__ ext2fs_file_get_lsize (int ,int*) ;

ext2_off_t ext2fs_file_get_size(ext2_file_t file)
{
 __u64 size;

 if (ext2fs_file_get_lsize(file, &size))
  return 0;
 if ((size >> 32) != 0)
  return 0;
 return size;
}
