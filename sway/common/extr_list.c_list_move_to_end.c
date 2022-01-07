
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int length; void** items; } ;
typedef TYPE_1__ list_t ;


 int list_add (TYPE_1__*,void*) ;
 int list_del (TYPE_1__*,int) ;
 int sway_assert (int,char*) ;

void list_move_to_end(list_t *list, void *item) {
 int i;
 for (i = 0; i < list->length; ++i) {
  if (list->items[i] == item) {
   break;
  }
 }
 if (!sway_assert(i < list->length, "Item not found in list")) {
  return;
 }
 list_del(list, i);
 list_add(list, item);
}
