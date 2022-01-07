
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int length; void** items; } ;
typedef TYPE_1__ list_t ;



int list_seq_find(list_t *list, int compare(const void *item, const void *data), const void *data) {
 for (int i = 0; i < list->length; i++) {
  void *item = list->items[i];
  if (compare(item, data) == 0) {
   return i;
  }
 }
 return -1;
}
