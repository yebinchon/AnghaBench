
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct ext2_inode {scalar_t__ i_size; int i_flags; int i_block; } ;
typedef int ext2_ino_t ;
typedef TYPE_1__* ext2_filsys ;
typedef int ext2_file_t ;
typedef int ext2_extent_handle_t ;
typedef scalar_t__ errcode_t ;
struct TYPE_6__ {int super; } ;


 int EXT2_FILE_WRITE ;
 int EXT4_EXTENTS_FL ;
 int EXT4_INLINE_DATA_FL ;
 int ext2fs_extent_free (int ) ;
 scalar_t__ ext2fs_extent_open2 (TYPE_1__*,int ,struct ext2_inode*,int *) ;
 int ext2fs_file_close (int ) ;
 scalar_t__ ext2fs_file_open (TYPE_1__*,int ,int ,int *) ;
 scalar_t__ ext2fs_file_write (int ,char*,size_t,int ) ;
 scalar_t__ ext2fs_has_feature_extents (int ) ;
 scalar_t__ ext2fs_write_inode (TYPE_1__*,int ,struct ext2_inode*) ;
 int memset (int ,int ,int) ;

__attribute__((used)) static errcode_t
ext2fs_inline_data_file_expand(ext2_filsys fs, ext2_ino_t ino,
          struct ext2_inode *inode, char *buf, size_t size)
{
 ext2_file_t e2_file;
 errcode_t retval;


 memset(inode->i_block, 0, sizeof(inode->i_block));
 if (ext2fs_has_feature_extents(fs->super)) {
  ext2_extent_handle_t handle;

  inode->i_flags &= ~EXT4_EXTENTS_FL;
  retval = ext2fs_extent_open2(fs, ino, inode, &handle);
  if (retval)
   return retval;
  ext2fs_extent_free(handle);
 }
 inode->i_flags &= ~EXT4_INLINE_DATA_FL;
 inode->i_size = 0;
 retval = ext2fs_write_inode(fs, ino, inode);
 if (retval)
  return retval;


 retval = ext2fs_file_open(fs, ino, EXT2_FILE_WRITE, &e2_file);
 if (retval)
  return retval;
 retval = ext2fs_file_write(e2_file, buf, size, 0);
 ext2fs_file_close(e2_file);
 return retval;
}
