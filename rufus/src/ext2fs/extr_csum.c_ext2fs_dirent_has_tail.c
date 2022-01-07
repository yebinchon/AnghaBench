
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ext2_dir_entry {int dummy; } ;
typedef int ext2_filsys ;


 scalar_t__ __get_dirent_tail (int ,struct ext2_dir_entry*,int *,int ) ;

int ext2fs_dirent_has_tail(ext2_filsys fs, struct ext2_dir_entry *dirent)
{
 return __get_dirent_tail(fs, dirent, ((void*)0), 0) == 0;
}
