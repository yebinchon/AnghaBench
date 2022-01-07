
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ext4_xattr_ref {int dummy; } ;
struct ext4_xattr_item {int dummy; } ;
typedef int __u8 ;


 int EEXIST ;
 struct ext4_xattr_item* ext4_xattr_insert_item_ordered (struct ext4_xattr_ref*,int ,char const*,size_t,void const*,size_t,int*) ;
 struct ext4_xattr_item* ext4_xattr_lookup_item (struct ext4_xattr_ref*,int ,char const*,size_t) ;

int ext4_fs_set_xattr_ordered(struct ext4_xattr_ref *ref, __u8 name_index,
 const char *name, size_t name_len, const void *data,
 size_t data_size)
{
 int ret = 0;
 struct ext4_xattr_item *item =
  ext4_xattr_lookup_item(ref, name_index, name, name_len);
 if (item) {
  ret = -EEXIST;
  goto Finish;
 }
 item = ext4_xattr_insert_item_ordered(ref, name_index, name, name_len,
  data, data_size, &ret);
Finish:
 return ret;
}
