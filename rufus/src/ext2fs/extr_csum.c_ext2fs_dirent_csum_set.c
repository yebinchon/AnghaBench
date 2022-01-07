
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ext2_dir_entry_tail {int det_checksum; } ;
struct ext2_dir_entry {int dummy; } ;
typedef int ext2_ino_t ;
typedef int ext2_filsys ;
typedef scalar_t__ errcode_t ;
typedef int __u32 ;


 scalar_t__ __get_dirent_tail (int ,struct ext2_dir_entry*,struct ext2_dir_entry_tail**,int) ;
 int ext2fs_cpu_to_le32 (int ) ;
 scalar_t__ ext2fs_dirent_csum (int ,int ,struct ext2_dir_entry*,int *,int) ;

__attribute__((used)) static errcode_t ext2fs_dirent_csum_set(ext2_filsys fs, ext2_ino_t inum,
     struct ext2_dir_entry *dirent)
{
 errcode_t retval;
 __u32 crc;
 struct ext2_dir_entry_tail *t;

 retval = __get_dirent_tail(fs, dirent, &t, 1);
 if (retval)
  return retval;


 retval = ext2fs_dirent_csum(fs, inum, dirent, &crc,
        (char *)t - (char *)dirent);
 if (retval)
  return retval;
 t->det_checksum = ext2fs_cpu_to_le32(crc);
 return 0;
}
