
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ext4_xattr_header {int dummy; } ;
struct ext4_xattr_entry {int e_name_len; scalar_t__ e_value_block; scalar_t__ e_value_size; int e_hash; int e_value_offs; } ;
typedef int hash ;
typedef int __u32 ;
typedef int __le32 ;


 char* EXT4_XATTR_NAME (struct ext4_xattr_entry*) ;
 int EXT4_XATTR_PAD_BITS ;
 int EXT4_XATTR_ROUND ;
 int NAME_HASH_SHIFT ;
 int VALUE_HASH_SHIFT ;
 int cpu_to_le32 (int) ;
 int le16_to_cpu (int ) ;
 int le32_to_cpu (scalar_t__) ;

__attribute__((used)) static inline void ext4_xattr_compute_hash(struct ext4_xattr_header *header,
        struct ext4_xattr_entry *entry)
{
 __u32 hash = 0;
 char *name = EXT4_XATTR_NAME(entry);
 int n;

 for (n = 0; n < entry->e_name_len; n++) {
  hash = (hash << NAME_HASH_SHIFT) ^
         (hash >> (8 * sizeof(hash) - NAME_HASH_SHIFT)) ^ *name++;
 }

 if (entry->e_value_block == 0 && entry->e_value_size != 0) {
  __le32 *value =
      (__le32 *)((char *)header + le16_to_cpu(entry->e_value_offs));
  for (n = (le32_to_cpu(entry->e_value_size) + EXT4_XATTR_ROUND) >>
    EXT4_XATTR_PAD_BITS;
       n; n--) {
   hash = (hash << VALUE_HASH_SHIFT) ^
          (hash >> (8 * sizeof(hash) - VALUE_HASH_SHIFT)) ^
          le32_to_cpu(*value++);
  }
 }
 entry->e_hash = cpu_to_le32(hash);
}
