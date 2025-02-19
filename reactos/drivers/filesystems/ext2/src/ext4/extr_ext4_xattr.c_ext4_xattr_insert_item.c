
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ext4_xattr_ref {scalar_t__ inode_size_rem; scalar_t__ block_size_rem; void* dirty; int ea_size; } ;
struct ext4_xattr_item {size_t data_size; int name_len; void* in_inode; } ;
typedef int __u8 ;


 int ENOMEM ;
 int ENOSPC ;
 scalar_t__ EXT4_XATTR_LEN (int ) ;
 scalar_t__ EXT4_XATTR_SIZE (size_t) ;
 void* FALSE ;
 void* TRUE ;
 struct ext4_xattr_item* ext4_xattr_item_alloc (int ,char const*,size_t) ;
 scalar_t__ ext4_xattr_item_alloc_data (struct ext4_xattr_item*,void const*,size_t) ;
 int ext4_xattr_item_free (struct ext4_xattr_item*) ;
 int ext4_xattr_item_insert (struct ext4_xattr_ref*,struct ext4_xattr_item*) ;

__attribute__((used)) static struct ext4_xattr_item *
ext4_xattr_insert_item(struct ext4_xattr_ref *xattr_ref, __u8 name_index,
         const char *name, size_t name_len, const void *data,
         size_t data_size,
         int *err)
{
 struct ext4_xattr_item *item;
 item = ext4_xattr_item_alloc(name_index, name, name_len);
 if (!item) {
  if (err)
   *err = -ENOMEM;

  return ((void*)0);
 }

 item->in_inode = TRUE;
 if (xattr_ref->inode_size_rem <
    EXT4_XATTR_SIZE(data_size) +
    EXT4_XATTR_LEN(item->name_len)) {
  if (xattr_ref->block_size_rem <
     EXT4_XATTR_SIZE(data_size) +
     EXT4_XATTR_LEN(item->name_len)) {
   if (err)
    *err = -ENOSPC;

   return ((void*)0);
  }

  item->in_inode = FALSE;
 }
 if (ext4_xattr_item_alloc_data(item, data, data_size) != 0) {
  ext4_xattr_item_free(item);
  if (err)
   *err = -ENOMEM;

  return ((void*)0);
 }
 ext4_xattr_item_insert(xattr_ref, item);
 xattr_ref->ea_size +=
     EXT4_XATTR_SIZE(item->data_size) + EXT4_XATTR_LEN(item->name_len);
 if (item->in_inode) {
  xattr_ref->inode_size_rem -=
   EXT4_XATTR_SIZE(item->data_size) +
   EXT4_XATTR_LEN(item->name_len);
 } else {
  xattr_ref->block_size_rem -=
   EXT4_XATTR_SIZE(item->data_size) +
   EXT4_XATTR_LEN(item->name_len);
 }
 xattr_ref->dirty = TRUE;
 if (err)
  *err = 0;

 return item;
}
