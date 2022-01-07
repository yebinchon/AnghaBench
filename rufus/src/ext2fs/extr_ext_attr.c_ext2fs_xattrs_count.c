
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ext2_xattr_handle {size_t count; } ;
typedef int errcode_t ;


 int EXT2_CHECK_MAGIC (struct ext2_xattr_handle*,int ) ;
 int EXT2_ET_MAGIC_EA_HANDLE ;

errcode_t ext2fs_xattrs_count(struct ext2_xattr_handle *handle, size_t *count)
{
 EXT2_CHECK_MAGIC(handle, EXT2_ET_MAGIC_EA_HANDLE);
 *count = handle->count;
 return 0;
}
