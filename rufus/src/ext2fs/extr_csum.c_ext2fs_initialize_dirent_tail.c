
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ext2_dir_entry_tail {int det_reserved_name_len; } ;
struct ext2_dir_entry {int dummy; } ;
typedef int ext2_filsys ;


 int EXT2_DIR_NAME_LEN_CSUM ;
 int ext2fs_set_rec_len (int ,int,struct ext2_dir_entry*) ;
 int memset (struct ext2_dir_entry_tail*,int ,int) ;

void ext2fs_initialize_dirent_tail(ext2_filsys fs,
       struct ext2_dir_entry_tail *t)
{
 memset(t, 0, sizeof(struct ext2_dir_entry_tail));
 ext2fs_set_rec_len(fs, sizeof(struct ext2_dir_entry_tail),
      (struct ext2_dir_entry *)t);
 t->det_reserved_name_len = EXT2_DIR_NAME_LEN_CSUM;
}
