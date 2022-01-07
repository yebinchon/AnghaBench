
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int length; int items; } ;
typedef TYPE_1__ list_t ;


 int qsort (int ,int ,int,int (*) (void const*,void const*)) ;

void list_qsort(list_t *list, int compare(const void *left, const void *right)) {
 qsort(list->items, list->length, sizeof(void *), compare);
}
