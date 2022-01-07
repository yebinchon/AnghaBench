
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct ext2_dir_entry {int dummy; } ;
typedef TYPE_1__* ext2_filsys ;
struct TYPE_4__ {unsigned int blocksize; } ;


 unsigned int DIRENT_MIN_LENGTH ;
 int ext2fs_dirent_name_len (struct ext2_dir_entry*) ;
 scalar_t__ ext2fs_get_rec_len (TYPE_1__*,struct ext2_dir_entry*,unsigned int*) ;

__attribute__((used)) static int ext2fs_validate_entry(ext2_filsys fs, char *buf,
     unsigned int offset,
     unsigned int final_offset)
{
 struct ext2_dir_entry *dirent;
 unsigned int rec_len;


 while ((offset < final_offset) &&
        (offset <= fs->blocksize - 12)) {
  dirent = (struct ext2_dir_entry *)(buf + offset);
  if (ext2fs_get_rec_len(fs, dirent, &rec_len))
   return 0;
  offset += rec_len;
  if ((rec_len < 8) ||
      ((rec_len % 4) != 0) ||
      ((ext2fs_dirent_name_len(dirent)+8) > (int) rec_len))
   return 0;
 }
 return (offset == final_offset);
}
