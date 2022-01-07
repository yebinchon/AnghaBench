
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * items; } ;
typedef TYPE_1__ list_t ;


 int list_rotate (TYPE_1__*,int,int) ;

__attribute__((used)) static void list_inplace_merge(list_t *list, int left, int last, int mid, int compare(const void *a, const void *b)) {
 int right = mid + 1;

 if (compare(&list->items[mid], &list->items[right]) <= 0) {
  return;
 }

 while (left <= mid && right <= last) {
  if (compare(&list->items[left], &list->items[right]) <= 0) {
   left++;
  } else {
   list_rotate(list, left, right);
   left++;
   mid++;
   right++;
  }
 }
}
