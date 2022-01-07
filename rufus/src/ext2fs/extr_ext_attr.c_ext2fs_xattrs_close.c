
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ext2_xattr_handle {struct ext2_xattr_handle* attrs; } ;
typedef int errcode_t ;


 int EXT2_CHECK_MAGIC (struct ext2_xattr_handle*,int ) ;
 int EXT2_ET_MAGIC_EA_HANDLE ;
 int ext2fs_free_mem (struct ext2_xattr_handle**) ;
 int xattrs_free_keys (struct ext2_xattr_handle*) ;

errcode_t ext2fs_xattrs_close(struct ext2_xattr_handle **handle)
{
 struct ext2_xattr_handle *h = *handle;

 EXT2_CHECK_MAGIC(h, EXT2_ET_MAGIC_EA_HANDLE);
 xattrs_free_keys(h);
 ext2fs_free_mem(&h->attrs);
 ext2fs_free_mem(handle);
 return 0;
}
