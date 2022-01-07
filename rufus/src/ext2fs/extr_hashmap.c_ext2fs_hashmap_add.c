
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
struct ext2fs_hashmap_entry {size_t key_len; struct ext2fs_hashmap_entry* list_prev; struct ext2fs_hashmap_entry* list_next; struct ext2fs_hashmap_entry* next; void const* key; void* data; } ;
struct ext2fs_hashmap {size_t (* hash ) (void const*,size_t) ;size_t size; struct ext2fs_hashmap_entry* last; struct ext2fs_hashmap_entry* first; struct ext2fs_hashmap_entry** entries; } ;


 struct ext2fs_hashmap_entry* malloc (int) ;
 size_t stub1 (void const*,size_t) ;

void ext2fs_hashmap_add(struct ext2fs_hashmap *h, void *data, const void *key,
   size_t key_len)
{
 uint32_t hash = h->hash(key, key_len) % h->size;
 struct ext2fs_hashmap_entry *e = malloc(sizeof(*e));

 if (!e)
  return;
 e->data = data;
 e->key = key;
 e->key_len = key_len;
 e->next = h->entries[hash];
 h->entries[hash] = e;

 e->list_prev = ((void*)0);
 e->list_next = h->first;
 if (h->first)
  h->first->list_prev = e;
 h->first = e;
 if (!h->last)
  h->last = e;
}
