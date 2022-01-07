
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void** items; } ;
typedef TYPE_1__ list_t ;



void list_swap(list_t *list, int src, int dest) {
 void *tmp = list->items[src];
 list->items[src] = list->items[dest];
 list->items[dest] = tmp;
}
