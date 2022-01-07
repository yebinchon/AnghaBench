
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct window_buffer_itemdata {int order; int size; int name; } ;
struct TYPE_2__ {scalar_t__ field; scalar_t__ reversed; } ;


 scalar_t__ WINDOW_BUFFER_BY_SIZE ;
 scalar_t__ WINDOW_BUFFER_BY_TIME ;
 int strcmp (int ,int ) ;
 TYPE_1__* window_buffer_sort ;

__attribute__((used)) static int
window_buffer_cmp(const void *a0, const void *b0)
{
 const struct window_buffer_itemdata *const *a = a0;
 const struct window_buffer_itemdata *const *b = b0;
 int result = 0;

 if (window_buffer_sort->field == WINDOW_BUFFER_BY_TIME)
  result = (*b)->order - (*a)->order;
 else if (window_buffer_sort->field == WINDOW_BUFFER_BY_SIZE)
  result = (*b)->size - (*a)->size;


 if (result == 0)
  result = strcmp((*a)->name, (*b)->name);

 if (window_buffer_sort->reversed)
  result = -result;
 return (result);
}
