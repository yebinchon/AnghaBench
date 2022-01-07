
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct footnote_ref {int dummy; } ;
struct footnote_list {int count; struct footnote_item* tail; struct footnote_item* head; } ;
struct footnote_item {struct footnote_item* next; struct footnote_ref* ref; } ;


 struct footnote_item* calloc (int,int) ;

__attribute__((used)) static int
add_footnote_ref(struct footnote_list *list, struct footnote_ref *ref)
{
 struct footnote_item *item = calloc(1, sizeof(struct footnote_item));
 if (!item)
  return 0;
 item->ref = ref;

 if (list->head == ((void*)0)) {
  list->head = list->tail = item;
 } else {
  list->tail->next = item;
  list->tail = item;
 }
 list->count++;

 return 1;
}
