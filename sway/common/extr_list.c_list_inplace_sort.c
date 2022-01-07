
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * items; } ;
typedef TYPE_1__ list_t ;


 int list_inplace_merge (TYPE_1__*,int,int,int,int (*) (void const*,void const*)) ;
 int list_swap (TYPE_1__*,int,int) ;

__attribute__((used)) static void list_inplace_sort(list_t *list, int first, int last, int compare(const void *a, const void *b)) {
 if (first >= last) {
  return;
 } else if ((last - first) == 1) {
  if (compare(&list->items[first], &list->items[last]) > 0) {
   list_swap(list, first, last);
  }
 } else {
  int mid = (int)((last + first) / 2);
  list_inplace_sort(list, first, mid, compare);
  list_inplace_sort(list, mid + 1, last, compare);
  list_inplace_merge(list, first, last, mid, compare);
 }
}
