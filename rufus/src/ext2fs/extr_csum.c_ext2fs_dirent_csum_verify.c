
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ext2_dir_entry_tail {int det_checksum; } ;
struct ext2_dir_entry {int dummy; } ;
typedef int ext2_ino_t ;
typedef int ext2_filsys ;
typedef scalar_t__ errcode_t ;
typedef scalar_t__ __u32 ;


 scalar_t__ __get_dirent_tail (int ,struct ext2_dir_entry*,struct ext2_dir_entry_tail**,int) ;
 scalar_t__ ext2fs_dirent_csum (int ,int ,struct ext2_dir_entry*,scalar_t__*,int) ;
 scalar_t__ ext2fs_le32_to_cpu (int ) ;

int ext2fs_dirent_csum_verify(ext2_filsys fs, ext2_ino_t inum,
         struct ext2_dir_entry *dirent)
{
 errcode_t retval;
 __u32 calculated;
 struct ext2_dir_entry_tail *t;

 retval = __get_dirent_tail(fs, dirent, &t, 1);
 if (retval)
  return 1;





 retval = ext2fs_dirent_csum(fs, inum, dirent, &calculated,
        (char *)t - (char *)dirent);
 if (retval)
  return 0;
 return ext2fs_le32_to_cpu(t->det_checksum) == calculated;
}
