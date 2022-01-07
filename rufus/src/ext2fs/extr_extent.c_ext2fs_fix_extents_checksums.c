
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct ext2fs_extent {int e_flags; } ;
struct ext2_inode {int i_flags; } ;
typedef int ext2_ino_t ;
typedef TYPE_1__* ext2_filsys ;
typedef int ext2_extent_handle_t ;
typedef scalar_t__ errcode_t ;
struct TYPE_4__ {int flags; int super; } ;


 scalar_t__ EXT2_ET_EXTENT_CSUM_INVALID ;
 scalar_t__ EXT2_ET_EXTENT_NO_NEXT ;
 scalar_t__ EXT2_ET_INODE_NOT_EXTENT ;
 int EXT2_EXTENT_FLAGS_LEAF ;
 int EXT2_EXTENT_LAST_SIB ;
 int EXT2_EXTENT_NEXT ;
 int EXT2_EXTENT_ROOT ;
 int EXT2_FLAG_IGNORE_CSUM_ERRORS ;
 int EXT4_EXTENTS_FL ;
 int ext2fs_extent_free (int ) ;
 scalar_t__ ext2fs_extent_get (int ,int ,struct ext2fs_extent*) ;
 scalar_t__ ext2fs_extent_open2 (TYPE_1__*,int ,struct ext2_inode*,int *) ;
 int ext2fs_has_feature_metadata_csum (int ) ;
 scalar_t__ update_path (int ) ;

errcode_t ext2fs_fix_extents_checksums(ext2_filsys fs, ext2_ino_t ino,
           struct ext2_inode *inode)
{
 ext2_extent_handle_t handle;
 struct ext2fs_extent extent;
 errcode_t errcode;
 int save_flags = fs->flags;

 if (!ext2fs_has_feature_metadata_csum(fs->super) ||
     (inode && !(inode->i_flags & EXT4_EXTENTS_FL)))
  return 0;

 errcode = ext2fs_extent_open2(fs, ino, inode, &handle);
 if (errcode) {
  if (errcode == EXT2_ET_INODE_NOT_EXTENT)
   errcode = 0;
  return errcode;
 }

 fs->flags &= ~EXT2_FLAG_IGNORE_CSUM_ERRORS;
 errcode = ext2fs_extent_get(handle, EXT2_EXTENT_ROOT, &extent);
 if (errcode)
  goto out;

 do {

  if (extent.e_flags & EXT2_EXTENT_FLAGS_LEAF) {
   errcode = ext2fs_extent_get(handle,
          EXT2_EXTENT_LAST_SIB,
          &extent);
   if (errcode)
    break;
  }

  errcode = ext2fs_extent_get(handle, EXT2_EXTENT_NEXT, &extent);
  if (errcode == EXT2_ET_EXTENT_CSUM_INVALID)
   errcode = update_path(handle);
 } while (errcode == 0);

out:

 if (errcode == EXT2_ET_EXTENT_NO_NEXT)
  errcode = 0;
 ext2fs_extent_free(handle);
 fs->flags = save_flags;
 return errcode;
}
