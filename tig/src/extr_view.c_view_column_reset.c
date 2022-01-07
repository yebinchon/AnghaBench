
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct view_column {scalar_t__ width; struct view_column* next; } ;
struct view {struct view_column* columns; } ;


 int view_column_info_changed (struct view*,int) ;

void
view_column_reset(struct view *view)
{
 struct view_column *column;

 view_column_info_changed(view, 1);
 for (column = view->columns; column; column = column->next)
  column->width = 0;
}
