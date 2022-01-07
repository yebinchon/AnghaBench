
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ext2_inode {int i_flags; int * i_block; int i_mode; } ;
struct ext2_inline_data {int ea_size; char* ea_data; void* ino; int fs; } ;
struct ext2_dir_entry {int name_len; char* name; void* inode; } ;
struct dir_context {char* buf; unsigned int buflen; int flags; void* errcode; } ;
typedef void* ext2_ino_t ;
typedef int ext2_filsys ;
typedef void* errcode_t ;
typedef scalar_t__ e2_blkcnt_t ;


 int BLOCK_ABORT ;
 int BLOCK_INLINE_DATA_CHANGED ;
 int DIRENT_FLAG_INCLUDE_INLINE_DATA ;
 int EXT2_DIR_REC_LEN (int) ;
 void* EXT2_ET_NO_DIRECTORY ;
 void* EXT2_ET_NO_INLINE_DATA ;
 int EXT4_INLINE_DATA_DOTDOT_SIZE ;
 int EXT4_INLINE_DATA_FL ;
 int EXT4_MIN_INLINE_DATA_SIZE ;
 int LINUX_S_ISDIR (int ) ;
 int ext2fs_cpu_to_le32 (void*) ;
 void* ext2fs_dirent_swab_in2 (int ,char*,int,int ) ;
 void* ext2fs_dirent_swab_out2 (int ,char*,int,int ) ;
 int ext2fs_free_mem (char**) ;
 int ext2fs_get_rec_len (int ,struct ext2_dir_entry*,unsigned int*) ;
 void* ext2fs_inline_data_ea_get (struct ext2_inline_data*) ;
 void* ext2fs_inline_data_ea_set (struct ext2_inline_data*) ;
 void* ext2fs_le32_to_cpu (int ) ;
 int ext2fs_process_dir_block (int ,int ,int ,int ,int ,void*) ;
 void* ext2fs_read_inode (int ,void*,struct ext2_inode*) ;
 int ext2fs_set_rec_len (int ,int ,struct ext2_dir_entry*) ;
 void* ext2fs_write_inode (int ,void*,struct ext2_inode*) ;

int ext2fs_inline_data_dir_iterate(ext2_filsys fs, ext2_ino_t ino,
       void *priv_data)
{
 struct dir_context *ctx;
 struct ext2_inode inode;
 struct ext2_dir_entry dirent;
 struct ext2_inline_data data;
 int ret = BLOCK_ABORT;
 e2_blkcnt_t blockcnt = 0;
 char *old_buf;
 unsigned int old_buflen;
 int old_flags;

 ctx = (struct dir_context *)priv_data;
 old_buf = ctx->buf;
 old_buflen = ctx->buflen;
 old_flags = ctx->flags;
 ctx->flags |= DIRENT_FLAG_INCLUDE_INLINE_DATA;

 ctx->errcode = ext2fs_read_inode(fs, ino, &inode);
 if (ctx->errcode)
  goto out;

 if (!(inode.i_flags & EXT4_INLINE_DATA_FL)) {
  ctx->errcode = EXT2_ET_NO_INLINE_DATA;
  goto out;
 }

 if (!LINUX_S_ISDIR(inode.i_mode)) {
  ctx->errcode = EXT2_ET_NO_DIRECTORY;
  goto out;
 }
 ret = 0;


 dirent.inode = ino;
 dirent.name_len = 1;
 ext2fs_set_rec_len(fs, EXT2_DIR_REC_LEN(2), &dirent);
 dirent.name[0] = '.';
 dirent.name[1] = '\0';
 ctx->buf = (char *)&dirent;
 ext2fs_get_rec_len(fs, &dirent, &ctx->buflen);
 ret |= ext2fs_process_dir_block(fs, 0, blockcnt++, 0, 0, priv_data);
 if (ret & BLOCK_ABORT)
  goto out;

 dirent.inode = ext2fs_le32_to_cpu(inode.i_block[0]);
 dirent.name_len = 2;
 ext2fs_set_rec_len(fs, EXT2_DIR_REC_LEN(3), &dirent);
 dirent.name[0] = '.';
 dirent.name[1] = '.';
 dirent.name[2] = '\0';
 ctx->buf = (char *)&dirent;
 ext2fs_get_rec_len(fs, &dirent, &ctx->buflen);
 ret |= ext2fs_process_dir_block(fs, 0, blockcnt++, 0, 0, priv_data);
 if (ret & BLOCK_INLINE_DATA_CHANGED) {
  errcode_t err;

  inode.i_block[0] = ext2fs_cpu_to_le32(dirent.inode);
  err = ext2fs_write_inode(fs, ino, &inode);
  if (err)
   goto out;
  ret &= ~BLOCK_INLINE_DATA_CHANGED;
 }
 if (ret & BLOCK_ABORT)
  goto out;

 ctx->buf = (char *)inode.i_block + EXT4_INLINE_DATA_DOTDOT_SIZE;
 ctx->buflen = EXT4_MIN_INLINE_DATA_SIZE - EXT4_INLINE_DATA_DOTDOT_SIZE;







 ret |= ext2fs_process_dir_block(fs, 0, blockcnt++, 0, 0, priv_data);
 if (ret & BLOCK_INLINE_DATA_CHANGED) {
  ctx->errcode = ext2fs_write_inode(fs, ino, &inode);
  if (ctx->errcode)
   ret |= BLOCK_ABORT;
  ret &= ~BLOCK_INLINE_DATA_CHANGED;
 }
 if (ret & BLOCK_ABORT)
  goto out;

 data.fs = fs;
 data.ino = ino;
 ctx->errcode = ext2fs_inline_data_ea_get(&data);
 if (ctx->errcode) {
  ret |= BLOCK_ABORT;
  goto out;
 }
 if (data.ea_size <= 0)
  goto out1;

 ctx->buf = data.ea_data;
 ctx->buflen = data.ea_size;
 ret |= ext2fs_process_dir_block(fs, 0, blockcnt++, 0, 0, priv_data);
 if (ret & BLOCK_INLINE_DATA_CHANGED) {
  ctx->errcode = ext2fs_inline_data_ea_set(&data);
  if (ctx->errcode)
   ret |= BLOCK_ABORT;
 }

out1:
 ext2fs_free_mem(&data.ea_data);
out:
 ctx->buf = old_buf;
 ctx->buflen = old_buflen;
 ctx->flags = old_flags;
 ret &= ~(BLOCK_ABORT | BLOCK_INLINE_DATA_CHANGED);
 return ret;
}
