
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ext4_xattr_item {int data_size; int name_index; scalar_t__ name_len; } ;
struct ext4_xattr_header {int dummy; } ;
struct ext4_xattr_entry {int e_value_size; scalar_t__ e_value_block; int e_value_offs; int e_name_index; scalar_t__ e_name_len; } ;
typedef scalar_t__ __u8 ;


 int cpu_to_le16 (int) ;
 int cpu_to_le32 (int ) ;

__attribute__((used)) static void ext4_xattr_set_block_entry(struct ext4_xattr_item *item,
           struct ext4_xattr_header *block_header,
           struct ext4_xattr_entry *block_entry,
           void *block_data_ptr)
{
 block_entry->e_name_len = (__u8)item->name_len;
 block_entry->e_name_index = item->name_index;
 block_entry->e_value_offs =
     cpu_to_le16((char *)block_data_ptr - (char *)block_header);
 block_entry->e_value_block = 0;
 block_entry->e_value_size = cpu_to_le32(item->data_size);
}
