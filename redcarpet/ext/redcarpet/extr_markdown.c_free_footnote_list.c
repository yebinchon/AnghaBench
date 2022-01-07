
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct footnote_list {struct footnote_item* head; } ;
struct footnote_item {int ref; struct footnote_item* next; } ;


 int free (struct footnote_item*) ;
 int free_footnote_ref (int ) ;

__attribute__((used)) static void
free_footnote_list(struct footnote_list *list, int free_refs)
{
 struct footnote_item *item = list->head;
 struct footnote_item *next;

 while (item) {
  next = item->next;
  if (free_refs)
   free_footnote_ref(item->ref);
  free(item);
  item = next;
 }
}
