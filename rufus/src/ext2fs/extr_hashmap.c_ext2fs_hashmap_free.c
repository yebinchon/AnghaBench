
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ext2fs_hashmap_entry {size_t size; int data; int (* free ) (int ) ;struct ext2fs_hashmap_entry* next; struct ext2fs_hashmap_entry** entries; } ;
struct ext2fs_hashmap {size_t size; int data; int (* free ) (int ) ;struct ext2fs_hashmap* next; struct ext2fs_hashmap** entries; } ;


 int free (struct ext2fs_hashmap_entry*) ;
 int stub1 (int ) ;

void ext2fs_hashmap_free(struct ext2fs_hashmap *h)
{
 size_t i;

 for (i = 0; i < h->size; ++i) {
  struct ext2fs_hashmap_entry *it = h->entries[i];
  while (it) {
   struct ext2fs_hashmap_entry *tmp = it->next;
   if (h->free)
    h->free(it->data);
   free(it);
   it = tmp;
  }
 }
 free(h);
}
