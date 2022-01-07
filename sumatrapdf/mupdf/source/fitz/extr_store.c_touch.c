
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* head; TYPE_2__* tail; } ;
typedef TYPE_1__ fz_store ;
struct TYPE_6__ {struct TYPE_6__* prev; struct TYPE_6__* next; } ;
typedef TYPE_2__ fz_item ;



__attribute__((used)) static void
touch(fz_store *store, fz_item *item)
{
 if (item->next != item)
 {

  if (item->next)
   item->next->prev = item->prev;
  else
   store->tail = item->prev;
  if (item->prev)
   item->prev->next = item->next;
  else
   store->head = item->next;
 }

 item->next = store->head;
 if (item->next)
  item->next->prev = item;
 else
  store->tail = item;
 store->head = item;
 item->prev = ((void*)0);
}
