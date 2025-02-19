
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ext2_xattr_handle {int count; struct ext2_xattr* attrs; } ;
struct ext2_xattr {char* name; char* value; size_t value_len; } ;
typedef int errcode_t ;


 int EXT2_CHECK_MAGIC (struct ext2_xattr_handle*,int ) ;
 int EXT2_ET_MAGIC_EA_HANDLE ;
 int XATTR_ABORT ;
 int XATTR_CHANGED ;
 int ext2fs_xattrs_write (struct ext2_xattr_handle*) ;

errcode_t ext2fs_xattrs_iterate(struct ext2_xattr_handle *h,
    int (*func)(char *name, char *value,
         size_t value_len, void *data),
    void *data)
{
 struct ext2_xattr *x;
 int dirty = 0;
 int ret;

 EXT2_CHECK_MAGIC(h, EXT2_ET_MAGIC_EA_HANDLE);
 for (x = h->attrs; x < h->attrs + h->count; x++) {
  ret = func(x->name, x->value, x->value_len, data);
  if (ret & XATTR_CHANGED)
   dirty = 1;
  if (ret & XATTR_ABORT)
   break;
 }

 if (dirty)
  return ext2fs_xattrs_write(h);
 return 0;
}
