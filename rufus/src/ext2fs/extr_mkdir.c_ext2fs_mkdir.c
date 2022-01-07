
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_1__ ;


struct ext2_inode {int i_mode; int i_links_count; int i_size; int * i_block; int i_flags; scalar_t__ i_gid; scalar_t__ i_uid; } ;
typedef int parent_inode ;
typedef scalar_t__ ext2_ino_t ;
typedef TYPE_1__* ext2_filsys ;
typedef int ext2_extent_handle_t ;
typedef scalar_t__ errcode_t ;
typedef int blk64_t ;
struct TYPE_20__ {int umask; int super; int blocksize; } ;


 int EXT2_CHECK_MAGIC (TYPE_1__*,int ) ;
 scalar_t__ EXT2_ET_DIR_EXISTS ;
 scalar_t__ EXT2_ET_FILE_NOT_FOUND ;
 int EXT2_ET_MAGIC_EXT2FS_FILSYS ;
 scalar_t__ EXT2_FIRST_INO (int ) ;
 int EXT2_FT_DIR ;
 int EXT4_EXTENTS_FL ;
 int EXT4_INLINE_DATA_FL ;
 int EXT4_MIN_INLINE_DATA_SIZE ;
 int LINUX_S_IFDIR ;
 int ext2fs_block_alloc_stats2 (TYPE_1__*,int ,int) ;
 int ext2fs_extent_free (int ) ;
 scalar_t__ ext2fs_extent_open2 (TYPE_1__*,scalar_t__,struct ext2_inode*,int *) ;
 scalar_t__ ext2fs_extent_set_bmap (int ,int ,int ,int ) ;
 int ext2fs_find_inode_goal (TYPE_1__*,scalar_t__,struct ext2_inode*,int ) ;
 int ext2fs_free_mem (char**) ;
 scalar_t__ ext2fs_has_feature_extents (int ) ;
 scalar_t__ ext2fs_has_feature_inline_data (int ) ;
 int ext2fs_iblk_set (TYPE_1__*,struct ext2_inode*,int) ;
 scalar_t__ ext2fs_inline_data_init (TYPE_1__*,scalar_t__) ;
 int ext2fs_inode_alloc_stats2 (TYPE_1__*,scalar_t__,int,int) ;
 scalar_t__ ext2fs_link (TYPE_1__*,scalar_t__,char const*,scalar_t__,int ) ;
 scalar_t__ ext2fs_lookup (TYPE_1__*,scalar_t__,char const*,int ,int ,scalar_t__*) ;
 scalar_t__ ext2fs_new_block2 (TYPE_1__*,int ,int *,int *) ;
 scalar_t__ ext2fs_new_dir_block (TYPE_1__*,scalar_t__,scalar_t__,char**) ;
 scalar_t__ ext2fs_new_dir_inline_data (TYPE_1__*,scalar_t__,scalar_t__,int *) ;
 scalar_t__ ext2fs_new_inode (TYPE_1__*,scalar_t__,int,int ,scalar_t__*) ;
 scalar_t__ ext2fs_read_inode (TYPE_1__*,scalar_t__,struct ext2_inode*) ;
 scalar_t__ ext2fs_write_dir_block4 (TYPE_1__*,int ,char*,int ,scalar_t__) ;
 scalar_t__ ext2fs_write_inode (TYPE_1__*,scalar_t__,struct ext2_inode*) ;
 scalar_t__ ext2fs_write_new_inode (TYPE_1__*,scalar_t__,struct ext2_inode*) ;
 int memset (struct ext2_inode*,int ,int) ;
 int strlen (char const*) ;

errcode_t ext2fs_mkdir(ext2_filsys fs, ext2_ino_t parent, ext2_ino_t inum,
         const char *name)
{
 ext2_extent_handle_t handle;
 errcode_t retval;
 struct ext2_inode parent_inode, inode;
 ext2_ino_t ino = inum;
 ext2_ino_t scratch_ino;
 blk64_t blk;
 char *block = 0;
 int inline_data = 0;

 EXT2_CHECK_MAGIC(fs, EXT2_ET_MAGIC_EXT2FS_FILSYS);





 if ((!ino || ino >= EXT2_FIRST_INO(fs->super)) &&
     ext2fs_has_feature_inline_data(fs->super))
  inline_data = 1;




 if (!ino) {
  retval = ext2fs_new_inode(fs, parent, LINUX_S_IFDIR | 0755,
       0, &ino);
  if (retval)
   goto cleanup;
 }




 memset(&inode, 0, sizeof(struct ext2_inode));
 if (!inline_data) {
  retval = ext2fs_new_block2(fs, ext2fs_find_inode_goal(fs, ino,
              &inode,
              0),
        ((void*)0), &blk);
  if (retval)
   goto cleanup;
 }




 if (inline_data)
  retval = ext2fs_new_dir_inline_data(fs, ino, parent,
          inode.i_block);
 else
  retval = ext2fs_new_dir_block(fs, ino, parent, &block);
 if (retval)
  goto cleanup;




 if (parent != ino) {
  retval = ext2fs_read_inode(fs, parent, &parent_inode);
  if (retval)
   goto cleanup;
 } else
  memset(&parent_inode, 0, sizeof(parent_inode));




 inode.i_mode = LINUX_S_IFDIR | (0777 & ~fs->umask);
 inode.i_uid = inode.i_gid = 0;
 if (inline_data) {
  inode.i_flags |= EXT4_INLINE_DATA_FL;
  inode.i_size = EXT4_MIN_INLINE_DATA_SIZE;
 } else {
  if (ext2fs_has_feature_extents(fs->super))
   inode.i_flags |= EXT4_EXTENTS_FL;
  else
   inode.i_block[0] = blk;
  inode.i_size = fs->blocksize;
  ext2fs_iblk_set(fs, &inode, 1);
 }
 inode.i_links_count = 2;






 retval = ext2fs_write_new_inode(fs, ino, &inode);
 if (retval)
  goto cleanup;
 if (inline_data) {

  retval = ext2fs_inline_data_init(fs, ino);
 } else {
  retval = ext2fs_write_dir_block4(fs, blk, block, 0, ino);
  if (retval)
   goto cleanup;

  if (ext2fs_has_feature_extents(fs->super)) {
   retval = ext2fs_extent_open2(fs, ino, &inode, &handle);
   if (retval)
    goto cleanup;
   retval = ext2fs_extent_set_bmap(handle, 0, blk, 0);
   ext2fs_extent_free(handle);
   if (retval)
    goto cleanup;
  }
 }




 if (name) {
  retval = ext2fs_lookup(fs, parent, name, strlen(name), 0,
           &scratch_ino);
  if (!retval) {
   retval = EXT2_ET_DIR_EXISTS;
   name = 0;
   goto cleanup;
  }
  if (retval != EXT2_ET_FILE_NOT_FOUND)
   goto cleanup;
  retval = ext2fs_link(fs, parent, name, ino, EXT2_FT_DIR);
  if (retval)
   goto cleanup;
 }




 if (parent != ino) {

  retval = ext2fs_read_inode(fs, parent, &parent_inode);
  if (retval)
   goto cleanup;
  parent_inode.i_links_count++;
  retval = ext2fs_write_inode(fs, parent, &parent_inode);
  if (retval)
   goto cleanup;
 }




 if (!inline_data)
  ext2fs_block_alloc_stats2(fs, blk, +1);
 ext2fs_inode_alloc_stats2(fs, ino, +1, 1);

cleanup:
 if (block)
  ext2fs_free_mem(&block);
 return retval;

}
