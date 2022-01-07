
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct ext2_inode {int i_flags; } ;
typedef int ext2_ino_t ;
typedef TYPE_1__* ext2_filsys ;
typedef int ext2_extent_handle_t ;
typedef scalar_t__ errcode_t ;
typedef scalar_t__ blk64_t ;
struct TYPE_5__ {int super; } ;


 int EXT4_EXTENTS_FL ;
 int ext2fs_extent_free (int ) ;
 scalar_t__ ext2fs_extent_open2 (TYPE_1__*,int ,struct ext2_inode*,int *) ;
 int ext2fs_has_feature_bigalloc (int ) ;
 scalar_t__ implied_cluster_alloc (TYPE_1__*,int ,struct ext2_inode*,int ,scalar_t__,scalar_t__*) ;

errcode_t ext2fs_map_cluster_block(ext2_filsys fs, ext2_ino_t ino,
       struct ext2_inode *inode, blk64_t lblk,
       blk64_t *pblk)
{
 ext2_extent_handle_t handle;
 errcode_t retval;


 *pblk = 0;
 if (!ext2fs_has_feature_bigalloc(fs->super) ||
     !(inode->i_flags & EXT4_EXTENTS_FL))
  return 0;

 retval = ext2fs_extent_open2(fs, ino, inode, &handle);
 if (retval)
  goto out;

 retval = implied_cluster_alloc(fs, ino, inode, handle, lblk, pblk);
 if (retval)
  goto out2;

out2:
 ext2fs_extent_free(handle);
out:
 return retval;
}
