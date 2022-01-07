
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int length; void** items; } ;
typedef TYPE_1__ list_t ;


 int list_resize (TYPE_1__*) ;

void list_add(list_t *list, void *item) {
 list_resize(list);
 list->items[list->length++] = item;
}
