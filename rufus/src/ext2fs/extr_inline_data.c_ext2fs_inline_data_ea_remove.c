
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ext2_xattr_handle {int dummy; } ;
typedef int ext2_ino_t ;
typedef int ext2_filsys ;
typedef scalar_t__ errcode_t ;


 scalar_t__ ext2fs_xattr_remove (struct ext2_xattr_handle*,char*) ;
 int ext2fs_xattrs_close (struct ext2_xattr_handle**) ;
 scalar_t__ ext2fs_xattrs_open (int ,int ,struct ext2_xattr_handle**) ;
 scalar_t__ ext2fs_xattrs_read (struct ext2_xattr_handle*) ;

errcode_t ext2fs_inline_data_ea_remove(ext2_filsys fs, ext2_ino_t ino)
{
 struct ext2_xattr_handle *handle;
 errcode_t retval;

 retval = ext2fs_xattrs_open(fs, ino, &handle);
 if (retval)
  return retval;

 retval = ext2fs_xattrs_read(handle);
 if (retval)
  goto err;

 retval = ext2fs_xattr_remove(handle, "system.data");
err:
 (void) ext2fs_xattrs_close(&handle);
 return retval;
}
