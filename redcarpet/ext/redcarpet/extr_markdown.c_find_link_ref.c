
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct link_ref {unsigned int id; struct link_ref* next; } ;


 unsigned int REF_TABLE_SIZE ;
 unsigned int hash_link_ref (int *,size_t) ;

__attribute__((used)) static struct link_ref *
find_link_ref(struct link_ref **references, uint8_t *name, size_t length)
{
 unsigned int hash = hash_link_ref(name, length);
 struct link_ref *ref = ((void*)0);

 ref = references[hash % REF_TABLE_SIZE];

 while (ref != ((void*)0)) {
  if (ref->id == hash)
   return ref;

  ref = ref->next;
 }

 return ((void*)0);
}
