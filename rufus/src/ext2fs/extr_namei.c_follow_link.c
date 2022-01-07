
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct ext2_inode {int i_flags; int i_size; int * i_block; int i_mode; } ;
typedef int ext2_ino_t ;
typedef TYPE_1__* ext2_filsys ;
typedef scalar_t__ errcode_t ;
typedef int blk64_t ;
struct TYPE_7__ {int io; int blocksize; } ;


 int EXT2FS_MAX_NESTED_LINKS ;
 scalar_t__ EXT2_ET_SYMLINK_LOOP ;
 int EXT4_INLINE_DATA_FL ;
 int LINUX_S_ISLNK (int ) ;
 scalar_t__ ext2fs_bmap2 (TYPE_1__*,int ,struct ext2_inode*,int *,int ,int ,int *,int *) ;
 int ext2fs_free_mem (char**) ;
 scalar_t__ ext2fs_get_mem (int ,char**) ;
 scalar_t__ ext2fs_get_memzero (int ,char**) ;
 scalar_t__ ext2fs_inline_data_get (TYPE_1__*,int ,struct ext2_inode*,char*,int *) ;
 scalar_t__ ext2fs_is_fast_symlink (struct ext2_inode*) ;
 scalar_t__ ext2fs_read_inode (TYPE_1__*,int ,struct ext2_inode*) ;
 scalar_t__ io_channel_read_blk64 (int ,int ,int,char*) ;
 scalar_t__ open_namei (TYPE_1__*,int ,int ,char*,int ,int,int,char*,int *) ;
 int printf (char*,int ,int ,int ,int) ;

__attribute__((used)) static errcode_t follow_link(ext2_filsys fs, ext2_ino_t root, ext2_ino_t dir,
        ext2_ino_t inode, int link_count,
        char *buf, ext2_ino_t *res_inode)
{
 char *pathname;
 char *buffer = 0;
 errcode_t retval;
 struct ext2_inode ei;
 blk64_t blk;






 retval = ext2fs_read_inode (fs, inode, &ei);
 if (retval) return retval;
 if (!LINUX_S_ISLNK (ei.i_mode)) {
  *res_inode = inode;
  return 0;
 }
 if (link_count++ >= EXT2FS_MAX_NESTED_LINKS)
  return EXT2_ET_SYMLINK_LOOP;

 if (ext2fs_is_fast_symlink(&ei))
  pathname = (char *)&(ei.i_block[0]);
 else if (ei.i_flags & EXT4_INLINE_DATA_FL) {
  retval = ext2fs_get_memzero(ei.i_size, &buffer);
  if (retval)
   return retval;

  retval = ext2fs_inline_data_get(fs, inode,
      &ei, buffer, ((void*)0));
  if (retval) {
   ext2fs_free_mem(&buffer);
   return retval;
  }
  pathname = buffer;
 } else {
  retval = ext2fs_bmap2(fs, inode, &ei, ((void*)0), 0, 0, ((void*)0), &blk);
  if (retval)
   return retval;

  retval = ext2fs_get_mem(fs->blocksize, &buffer);
  if (retval)
   return retval;

  retval = io_channel_read_blk64(fs->io, blk, 1, buffer);
  if (retval) {
   ext2fs_free_mem(&buffer);
   return retval;
  }
  pathname = buffer;
 }

 retval = open_namei(fs, root, dir, pathname, ei.i_size, 1,
       link_count, buf, res_inode);
 if (buffer)
  ext2fs_free_mem(&buffer);
 return retval;
}
