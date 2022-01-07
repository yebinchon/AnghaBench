
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int length; } ;
typedef TYPE_1__ list_t ;


 int list_inplace_sort (TYPE_1__*,int ,int,int (*) (void const*,void const*)) ;

void list_stable_sort(list_t *list, int compare(const void *a, const void *b)) {
 if (list->length > 1) {
  list_inplace_sort(list, 0, list->length - 1, compare);
 }
}
