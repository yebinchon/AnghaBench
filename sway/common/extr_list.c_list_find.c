
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int length; void const** items; } ;
typedef TYPE_1__ list_t ;



int list_find(list_t *list, const void *item) {
 for (int i = 0; i < list->length; i++) {
  if (list->items[i] == item) {
   return i;
  }
 }
 return -1;
}
