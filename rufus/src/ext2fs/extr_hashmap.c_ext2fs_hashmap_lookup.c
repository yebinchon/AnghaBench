
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
struct ext2fs_hashmap_entry {size_t key_len; void* data; int key; struct ext2fs_hashmap_entry* next; } ;
struct ext2fs_hashmap {size_t (* hash ) (void const*,size_t) ;size_t size; struct ext2fs_hashmap_entry** entries; } ;


 int memcmp (int ,void const*,size_t) ;
 size_t stub1 (void const*,size_t) ;

void *ext2fs_hashmap_lookup(struct ext2fs_hashmap *h, const void *key,
       size_t key_len)
{
 struct ext2fs_hashmap_entry *iter;
 uint32_t hash = h->hash(key, key_len) % h->size;

 for (iter = h->entries[hash]; iter; iter = iter->next)
  if (iter->key_len == key_len && !memcmp(iter->key, key, key_len))
   return iter->data;
 return ((void*)0);
}
