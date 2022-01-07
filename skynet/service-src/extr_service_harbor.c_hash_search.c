
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
struct keyvalue {size_t hash; struct keyvalue* next; int key; } ;
struct hashmap {struct keyvalue** node; } ;


 int GLOBALNAME_LENGTH ;
 size_t HASH_SIZE ;
 scalar_t__ strncmp (int ,char const*,int ) ;

__attribute__((used)) static struct keyvalue *
hash_search(struct hashmap * hash, const char name[GLOBALNAME_LENGTH]) {
 uint32_t *ptr = (uint32_t*) name;
 uint32_t h = ptr[0] ^ ptr[1] ^ ptr[2] ^ ptr[3];
 struct keyvalue * node = hash->node[h % HASH_SIZE];
 while (node) {
  if (node->hash == h && strncmp(node->key, name, GLOBALNAME_LENGTH) == 0) {
   return node;
  }
  node = node->next;
 }
 return ((void*)0);
}
