
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ext2fs_hashmap_entry {void* data; struct ext2fs_hashmap_entry* list_next; } ;
struct ext2fs_hashmap {struct ext2fs_hashmap_entry* first; } ;



void *ext2fs_hashmap_iter_in_order(struct ext2fs_hashmap *h,
       struct ext2fs_hashmap_entry **it)
{
 *it = *it ? (*it)->list_next : h->first;
 return *it ? (*it)->data : ((void*)0);
}
