
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ext2_ext_attr_header {int h_hash; } ;
struct ext2_ext_attr_entry {int e_hash; } ;
typedef int hash ;
typedef int __u32 ;


 int BLOCK_HASH_SHIFT ;
 struct ext2_ext_attr_entry* EXT2_EXT_ATTR_NEXT (struct ext2_ext_attr_entry*) ;
 int EXT2_EXT_IS_LAST_ENTRY (struct ext2_ext_attr_entry*) ;

void ext2fs_ext_attr_block_rehash(struct ext2_ext_attr_header *header,
      struct ext2_ext_attr_entry *end)
{
 struct ext2_ext_attr_entry *here;
 __u32 hash = 0;

 here = (struct ext2_ext_attr_entry *)(header+1);
 while (here < end && !EXT2_EXT_IS_LAST_ENTRY(here)) {
  if (!here->e_hash) {

   hash = 0;
   break;
  }
  hash = (hash << BLOCK_HASH_SHIFT) ^
         (hash >> (8*sizeof(hash) - BLOCK_HASH_SHIFT)) ^
         here->e_hash;
  here = EXT2_EXT_ATTR_NEXT(here);
 }
 header->h_hash = hash;
}
