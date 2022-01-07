
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct view_column {int type; struct view_column* next; } ;
struct view {struct view_column* columns; } ;
typedef enum view_column_type { ____Placeholder_view_column_type } view_column_type ;



struct view_column *
get_view_column(struct view *view, enum view_column_type type)
{
 struct view_column *column;

 for (column = view->columns; column; column = column->next)
  if (column->type == type)
   return column;
 return ((void*)0);
}
