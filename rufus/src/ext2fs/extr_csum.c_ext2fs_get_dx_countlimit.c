
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ext2_dx_countlimit {int dummy; } ;
struct ext2_dir_entry {int dummy; } ;
typedef int ext2_filsys ;
typedef int errcode_t ;


 int __get_dx_countlimit (int ,struct ext2_dir_entry*,struct ext2_dx_countlimit**,int*,int ) ;

errcode_t ext2fs_get_dx_countlimit(ext2_filsys fs,
       struct ext2_dir_entry *dirent,
       struct ext2_dx_countlimit **cc,
       int *offset)
{
 return __get_dx_countlimit(fs, dirent, cc, offset, 0);
}
