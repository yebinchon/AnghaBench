
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void** items; } ;
typedef TYPE_1__ list_t ;



__attribute__((used)) static void list_rotate(list_t *list, int from, int to) {
 void *tmp = list->items[to];

 while (to > from) {
  list->items[to] = list->items[to - 1];
  to--;
 }

 list->items[from] = tmp;
}
