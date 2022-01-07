
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int length; int * items; } ;
typedef TYPE_1__ list_t ;


 int memmove (int *,int *,int) ;

void list_del(list_t *list, int index) {
 list->length--;
 memmove(&list->items[index], &list->items[index + 1], sizeof(void*) * (list->length - index));
}
