
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct window_pane {int active_point; int id; } ;
struct TYPE_2__ {scalar_t__ field; scalar_t__ reversed; } ;


 scalar_t__ WINDOW_TREE_BY_TIME ;
 TYPE_1__* window_tree_sort ;

__attribute__((used)) static int
window_tree_cmp_pane(const void *a0, const void *b0)
{
 const struct window_pane *const *a = a0;
 const struct window_pane *const *b = b0;
 int result;

 if (window_tree_sort->field == WINDOW_TREE_BY_TIME)
  result = (*a)->active_point - (*b)->active_point;
 else {




  result = (*a)->id - (*b)->id;
 }
 if (window_tree_sort->reversed)
  result = -result;
 return (result);
}
