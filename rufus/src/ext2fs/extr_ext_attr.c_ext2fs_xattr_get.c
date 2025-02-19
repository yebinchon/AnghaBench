
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ext2_xattr_handle {int count; int flags; struct ext2_xattr* attrs; } ;
struct ext2_xattr {char const* name; size_t value_len; int value; } ;
typedef scalar_t__ errcode_t ;


 int EXT2_CHECK_MAGIC (struct ext2_xattr_handle*,int ) ;
 scalar_t__ EXT2_ET_EA_KEY_NOT_FOUND ;
 int EXT2_ET_MAGIC_EA_HANDLE ;
 int XATTR_HANDLE_FLAG_RAW ;
 scalar_t__ convert_disk_buffer_to_posix_acl (int ,size_t,void**,size_t*) ;
 scalar_t__ ext2fs_get_mem (size_t,char**) ;
 int memcpy (char*,int ,size_t) ;
 scalar_t__ strcmp (char const*,char const*) ;

errcode_t ext2fs_xattr_get(struct ext2_xattr_handle *h, const char *key,
      void **value, size_t *value_len)
{
 struct ext2_xattr *x;
 char *val;
 errcode_t err;

 EXT2_CHECK_MAGIC(h, EXT2_ET_MAGIC_EA_HANDLE);
 for (x = h->attrs; x < h->attrs + h->count; x++) {
  if (strcmp(x->name, key))
   continue;

  if (!(h->flags & XATTR_HANDLE_FLAG_RAW) &&
      ((strcmp(key, "system.posix_acl_default") == 0) ||
       (strcmp(key, "system.posix_acl_access") == 0))) {
   err = convert_disk_buffer_to_posix_acl(x->value, x->value_len,
              value, value_len);
   return err;
  } else {
   err = ext2fs_get_mem(x->value_len, &val);
   if (err)
    return err;
   memcpy(val, x->value, x->value_len);
   *value = val;
   *value_len = x->value_len;
   return 0;
  }
 }

 return EXT2_ET_EA_KEY_NOT_FOUND;
}
