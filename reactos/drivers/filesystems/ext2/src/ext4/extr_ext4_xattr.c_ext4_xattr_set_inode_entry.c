
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ext4_xattr_item {int data_size; int name_index; scalar_t__ name_len; } ;
struct ext4_xattr_ibody_header {int dummy; } ;
struct ext4_xattr_entry {int e_value_size; scalar_t__ e_value_block; int e_value_offs; int e_name_index; scalar_t__ e_name_len; } ;
typedef scalar_t__ __u8 ;


 scalar_t__ EXT4_XATTR_IFIRST (struct ext4_xattr_ibody_header*) ;
 int cpu_to_le16 (int) ;
 int cpu_to_le32 (int ) ;

__attribute__((used)) static void
ext4_xattr_set_inode_entry(struct ext4_xattr_item *item,
      struct ext4_xattr_ibody_header *ibody_header,
      struct ext4_xattr_entry *entry, void *ibody_data_ptr)
{
 entry->e_name_len = (__u8)item->name_len;
 entry->e_name_index = item->name_index;
 entry->e_value_offs =
    cpu_to_le16((char *)ibody_data_ptr - (char *)EXT4_XATTR_IFIRST(ibody_header));
 entry->e_value_block = 0;
 entry->e_value_size = cpu_to_le32(item->data_size);
}
