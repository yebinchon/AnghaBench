
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct link_struct {int namelen; scalar_t__ inode; int flags; scalar_t__ done; int sb; int name; void* err; TYPE_1__* fs; } ;
struct ext2_dir_entry_tail {int dummy; } ;
struct ext2_dir_entry {scalar_t__ inode; int rec_len; char* name; } ;
struct TYPE_4__ {unsigned int blocksize; int super; } ;


 int DIRENT_ABORT ;
 int DIRENT_CHANGED ;
 struct ext2_dir_entry_tail* EXT2_DIRENT_TAIL (char*,unsigned int) ;
 int EXT2_DIR_REC_LEN (int) ;
 int ext2fs_dirent_name_len (struct ext2_dir_entry*) ;
 int ext2fs_dirent_set_file_type (struct ext2_dir_entry*,int) ;
 int ext2fs_dirent_set_name_len (struct ext2_dir_entry*,int) ;
 void* ext2fs_get_rec_len (TYPE_1__*,struct ext2_dir_entry*,unsigned int*) ;
 scalar_t__ ext2fs_has_feature_filetype (int ) ;
 scalar_t__ ext2fs_has_feature_metadata_csum (int ) ;
 int ext2fs_initialize_dirent_tail (TYPE_1__*,struct ext2_dir_entry_tail*) ;
 void* ext2fs_set_rec_len (TYPE_1__*,unsigned int,struct ext2_dir_entry*) ;
 int strncpy (char*,int ,int) ;

__attribute__((used)) static int link_proc(struct ext2_dir_entry *dirent,
       int offset,
       int blocksize,
       char *buf,
       void *priv_data)
{
 struct link_struct *ls = (struct link_struct *) priv_data;
 struct ext2_dir_entry *next;
 unsigned int rec_len, min_rec_len, curr_rec_len;
 int ret = 0;
 int csum_size = 0;
 struct ext2_dir_entry_tail *t;

 if (ls->done)
  return DIRENT_ABORT;

 rec_len = EXT2_DIR_REC_LEN(ls->namelen);

 ls->err = ext2fs_get_rec_len(ls->fs, dirent, &curr_rec_len);
 if (ls->err)
  return DIRENT_ABORT;

 if (ext2fs_has_feature_metadata_csum(ls->fs->super))
  csum_size = sizeof(struct ext2_dir_entry_tail);




 next = (struct ext2_dir_entry *) (buf + offset + curr_rec_len);
 if ((offset + (int) curr_rec_len < blocksize - (8 + csum_size)) &&
     (next->inode == 0) &&
     (offset + (int) curr_rec_len + (int) next->rec_len <= blocksize)) {
  curr_rec_len += next->rec_len;
  ls->err = ext2fs_set_rec_len(ls->fs, curr_rec_len, dirent);
  if (ls->err)
   return DIRENT_ABORT;
  ret = DIRENT_CHANGED;
 }
 if (csum_size &&
     curr_rec_len == ls->fs->blocksize &&
     !dirent->inode) {
  curr_rec_len -= csum_size;
  ls->err = ext2fs_set_rec_len(ls->fs, curr_rec_len, dirent);
  if (ls->err)
   return DIRENT_ABORT;
  t = EXT2_DIRENT_TAIL(buf, ls->fs->blocksize);
  ext2fs_initialize_dirent_tail(ls->fs, t);
  ret = DIRENT_CHANGED;
 }


 if (csum_size &&
     curr_rec_len == ls->fs->blocksize - EXT2_DIR_REC_LEN(1) &&
     offset == EXT2_DIR_REC_LEN(1) &&
     dirent->name[0] == '.' && dirent->name[1] == '.') {
  curr_rec_len -= csum_size;
  ls->err = ext2fs_set_rec_len(ls->fs, curr_rec_len, dirent);
  if (ls->err)
   return DIRENT_ABORT;
  t = EXT2_DIRENT_TAIL(buf, ls->fs->blocksize);
  ext2fs_initialize_dirent_tail(ls->fs, t);
  ret = DIRENT_CHANGED;
 }






 if (dirent->inode) {
  min_rec_len = EXT2_DIR_REC_LEN(ext2fs_dirent_name_len(dirent));
  if (curr_rec_len < (min_rec_len + rec_len))
   return ret;
  rec_len = curr_rec_len - min_rec_len;
  ls->err = ext2fs_set_rec_len(ls->fs, min_rec_len, dirent);
  if (ls->err)
   return DIRENT_ABORT;
  next = (struct ext2_dir_entry *) (buf + offset +
        dirent->rec_len);
  next->inode = 0;
  ext2fs_dirent_set_name_len(next, 0);
  ext2fs_dirent_set_file_type(next, 0);
  ls->err = ext2fs_set_rec_len(ls->fs, rec_len, next);
  if (ls->err)
   return DIRENT_ABORT;
  return DIRENT_CHANGED;
 }





 if (curr_rec_len < rec_len)
  return ret;
 dirent->inode = ls->inode;
 ext2fs_dirent_set_name_len(dirent, ls->namelen);
 strncpy(dirent->name, ls->name, ls->namelen);
 if (ext2fs_has_feature_filetype(ls->sb))
  ext2fs_dirent_set_file_type(dirent, ls->flags & 0x7);

 ls->done++;
 return DIRENT_ABORT|DIRENT_CHANGED;
}
