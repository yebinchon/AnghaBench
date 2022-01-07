
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct view_column {int opt; int prev_opt; struct view_column* next; } ;
struct view {struct view_column* columns; } ;


 scalar_t__ memcmp (int *,int *,int) ;

bool
view_column_info_changed(struct view *view, bool update)
{
 struct view_column *column;
 bool changed = 0;

 for (column = view->columns; column; column = column->next) {
  if (memcmp(&column->prev_opt, &column->opt, sizeof(column->opt))) {
   if (!update)
    return 1;
   column->prev_opt = column->opt;
   changed = 1;
  }
 }

 return changed;
}
