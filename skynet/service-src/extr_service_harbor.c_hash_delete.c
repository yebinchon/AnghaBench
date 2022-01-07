
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct keyvalue {int queue; struct keyvalue* next; struct keyvalue** node; } ;
struct hashmap {int queue; struct hashmap* next; struct hashmap** node; } ;


 int HASH_SIZE ;
 int release_queue (int ) ;
 int skynet_free (struct keyvalue*) ;

__attribute__((used)) static void
hash_delete(struct hashmap *hash) {
 int i;
 for (i=0;i<HASH_SIZE;i++) {
  struct keyvalue * node = hash->node[i];
  while (node) {
   struct keyvalue * next = node->next;
   release_queue(node->queue);
   skynet_free(node);
   node = next;
  }
 }
 skynet_free(hash);
}
