
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct footnote_ref {unsigned int id; } ;
struct footnote_list {struct footnote_item* head; } ;
struct footnote_item {struct footnote_item* next; struct footnote_ref* ref; } ;


 unsigned int hash_link_ref (int *,size_t) ;

__attribute__((used)) static struct footnote_ref *
find_footnote_ref(struct footnote_list *list, uint8_t *name, size_t length)
{
 unsigned int hash = hash_link_ref(name, length);
 struct footnote_item *item = ((void*)0);

 item = list->head;

 while (item != ((void*)0)) {
  if (item->ref->id == hash)
   return item->ref;
  item = item->next;
 }

 return ((void*)0);
}
