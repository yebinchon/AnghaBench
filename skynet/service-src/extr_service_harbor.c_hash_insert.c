
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
struct keyvalue {size_t hash; scalar_t__ value; int * queue; struct keyvalue* next; int key; } ;
struct hashmap {struct keyvalue** node; } ;


 int GLOBALNAME_LENGTH ;
 size_t HASH_SIZE ;
 int memcpy (int ,char const*,int ) ;
 struct keyvalue* skynet_malloc (int) ;

__attribute__((used)) static struct keyvalue *
hash_insert(struct hashmap * hash, const char name[GLOBALNAME_LENGTH]) {
 uint32_t *ptr = (uint32_t *)name;
 uint32_t h = ptr[0] ^ ptr[1] ^ ptr[2] ^ ptr[3];
 struct keyvalue ** pkv = &hash->node[h % HASH_SIZE];
 struct keyvalue * node = skynet_malloc(sizeof(*node));
 memcpy(node->key, name, GLOBALNAME_LENGTH);
 node->next = *pkv;
 node->queue = ((void*)0);
 node->hash = h;
 node->value = 0;
 *pkv = node;

 return node;
}
