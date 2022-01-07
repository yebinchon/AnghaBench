
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ext4_xattr_ref {size_t inode_size_rem; size_t block_size_rem; size_t ea_size; void* dirty; } ;
struct ext4_xattr_item {size_t data_size; void* in_inode; int name_len; } ;
typedef void* BOOL ;


 int ENOSPC ;
 size_t EXT4_XATTR_LEN (int ) ;
 size_t EXT4_XATTR_SIZE (size_t) ;
 void* FALSE ;
 void* TRUE ;
 int ext4_xattr_item_resize_data (struct ext4_xattr_item*,size_t) ;

__attribute__((used)) static int ext4_xattr_resize_item(struct ext4_xattr_ref *xattr_ref,
      struct ext4_xattr_item *item,
      size_t new_data_size)
{
 int ret = 0;
 BOOL to_inode = FALSE, to_block = FALSE;
 size_t old_data_size = item->data_size;
 size_t orig_room_size = item->in_inode ?
  xattr_ref->inode_size_rem :
  xattr_ref->block_size_rem;
 if (item->in_inode) {
  if (xattr_ref->inode_size_rem +
          EXT4_XATTR_SIZE(old_data_size) <
          EXT4_XATTR_SIZE(new_data_size)) {
   if (xattr_ref->block_size_rem <
           EXT4_XATTR_SIZE(new_data_size) +
           EXT4_XATTR_LEN(item->name_len))
    return -ENOSPC;

   to_block = TRUE;
  }
 } else {
  if (xattr_ref->block_size_rem +
    EXT4_XATTR_SIZE(old_data_size) <
    EXT4_XATTR_SIZE(new_data_size)) {
   if (xattr_ref->inode_size_rem <
     EXT4_XATTR_SIZE(new_data_size) +
     EXT4_XATTR_LEN(item->name_len))
    return -ENOSPC;

   to_inode = TRUE;
  }
 }
 ret = ext4_xattr_item_resize_data(item, new_data_size);
 if (ret)
  return ret;

 xattr_ref->ea_size =
     xattr_ref->ea_size -
     EXT4_XATTR_SIZE(old_data_size) +
     EXT4_XATTR_SIZE(new_data_size);





 if (to_block) {
  xattr_ref->inode_size_rem +=
   EXT4_XATTR_SIZE(old_data_size) +
   EXT4_XATTR_LEN(item->name_len);
  xattr_ref->block_size_rem -=
   EXT4_XATTR_SIZE(new_data_size) +
   EXT4_XATTR_LEN(item->name_len);
  item->in_inode = FALSE;
 } else if (to_inode) {
  xattr_ref->block_size_rem +=
   EXT4_XATTR_SIZE(old_data_size) +
   EXT4_XATTR_LEN(item->name_len);
  xattr_ref->inode_size_rem -=
   EXT4_XATTR_SIZE(new_data_size) +
   EXT4_XATTR_LEN(item->name_len);
  item->in_inode = TRUE;
 } else {




  orig_room_size +=
   EXT4_XATTR_SIZE(old_data_size);
  orig_room_size -=
   EXT4_XATTR_SIZE(new_data_size);
  if (item->in_inode)
   xattr_ref->inode_size_rem = orig_room_size;
  else
   xattr_ref->block_size_rem = orig_room_size;

 }
 xattr_ref->dirty = TRUE;
 return ret;
}
