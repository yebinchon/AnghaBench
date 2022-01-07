
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ext2_xattr_handle {unsigned int flags; } ;
typedef int errcode_t ;


 int EXT2_CHECK_MAGIC (struct ext2_xattr_handle*,int ) ;
 int EXT2_ET_MAGIC_EA_HANDLE ;

errcode_t ext2fs_xattrs_flags(struct ext2_xattr_handle *handle,
         unsigned int *new_flags, unsigned int *old_flags)
{
 EXT2_CHECK_MAGIC(handle, EXT2_ET_MAGIC_EA_HANDLE);
 if (old_flags)
  *old_flags = handle->flags;
 if (new_flags)
  handle->flags = *new_flags;
 return 0;
}
