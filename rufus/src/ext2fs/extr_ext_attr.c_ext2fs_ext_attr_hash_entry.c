
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ext2_ext_attr_entry {int e_name_len; scalar_t__ e_value_inum; int e_value_size; } ;
typedef int hash ;
typedef int __u32 ;


 int EXT2_EXT_ATTR_PAD_BITS ;
 int EXT2_EXT_ATTR_ROUND ;
 int NAME_HASH_SHIFT ;
 int VALUE_HASH_SHIFT ;
 int ext2fs_le32_to_cpu (int ) ;

__u32 ext2fs_ext_attr_hash_entry(struct ext2_ext_attr_entry *entry, void *data)
{
 __u32 hash = 0;
 char *name = ((char *) entry) + sizeof(struct ext2_ext_attr_entry);
 int n;

 for (n = 0; n < entry->e_name_len; n++) {
  hash = (hash << NAME_HASH_SHIFT) ^
         (hash >> (8*sizeof(hash) - NAME_HASH_SHIFT)) ^
         *name++;
 }


 if (entry->e_value_inum == 0 && entry->e_value_size != 0) {
  __u32 *value = (__u32 *)data;
  for (n = (entry->e_value_size + EXT2_EXT_ATTR_ROUND) >>
    EXT2_EXT_ATTR_PAD_BITS; n; n--) {
   hash = (hash << VALUE_HASH_SHIFT) ^
          (hash >> (8*sizeof(hash) - VALUE_HASH_SHIFT)) ^
          ext2fs_le32_to_cpu(*value++);
  }
 }

 return hash;
}
