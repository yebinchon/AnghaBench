
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ext2_dir_entry {unsigned int rec_len; } ;
typedef TYPE_1__* ext2_filsys ;
typedef int errcode_t ;
struct TYPE_3__ {unsigned int blocksize; } ;


 int EINVAL ;
 unsigned int EXT4_MAX_REC_LEN ;

errcode_t ext2fs_set_rec_len(ext2_filsys fs,
        unsigned int len,
        struct ext2_dir_entry *dirent)
{
 if ((len > fs->blocksize) || (fs->blocksize > (1 << 18)) || (len & 3))
  return EINVAL;
 if (len < 65536) {
  dirent->rec_len = len;
  return 0;
 }
 if (len == fs->blocksize) {
  if (fs->blocksize == 65536)
   dirent->rec_len = EXT4_MAX_REC_LEN;
  else
   dirent->rec_len = 0;
 } else
  dirent->rec_len = (len & 65532) | ((len >> 16) & 3);
 return 0;
}
