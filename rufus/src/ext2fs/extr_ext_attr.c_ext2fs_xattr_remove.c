
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ext2_xattr_handle {int count; int ibody_count; struct ext2_xattr* attrs; int fs; } ;
struct ext2_xattr {scalar_t__ ea_ino; int value; int name; } ;
typedef int errcode_t ;


 int EXT2_CHECK_MAGIC (struct ext2_xattr_handle*,int ) ;
 int EXT2_ET_MAGIC_EA_HANDLE ;
 int ext2fs_free_mem (int *) ;
 int ext2fs_xattrs_write (struct ext2_xattr_handle*) ;
 int memmove (struct ext2_xattr*,struct ext2_xattr*,int) ;
 int memset (struct ext2_xattr*,int ,int) ;
 scalar_t__ strcmp (int ,char const*) ;
 int xattr_inode_dec_ref (int ,scalar_t__) ;

errcode_t ext2fs_xattr_remove(struct ext2_xattr_handle *handle,
         const char *key)
{
 struct ext2_xattr *x;
 struct ext2_xattr *end = handle->attrs + handle->count;

 EXT2_CHECK_MAGIC(handle, EXT2_ET_MAGIC_EA_HANDLE);
 for (x = handle->attrs; x < end; x++) {
  if (strcmp(x->name, key) == 0) {
   ext2fs_free_mem(&x->name);
   ext2fs_free_mem(&x->value);
   if (x->ea_ino)
    xattr_inode_dec_ref(handle->fs, x->ea_ino);
   memmove(x, x + 1, (end - x - 1)*sizeof(*x));
   memset(end - 1, 0, sizeof(*end));
   if (x < handle->attrs + handle->ibody_count)
    handle->ibody_count--;
   handle->count--;
   return ext2fs_xattrs_write(handle);
  }
 }


 return 0;
}
