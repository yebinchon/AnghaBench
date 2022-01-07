
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct view {size_t lines; TYPE_1__* line; } ;
struct TYPE_2__ {size_t lineno; } ;


 int qsort (TYPE_1__*,size_t,int,int ) ;
 int sort_view_compare ;
 struct view* sorting_view ;

void
resort_view(struct view *view, bool renumber)
{
 sorting_view = view;
 qsort(view->line, view->lines, sizeof(*view->line), sort_view_compare);

 if (renumber) {
  size_t i, lineno;

  for (i = 0, lineno = 1; i < view->lines; i++)
   if (view->line[i].lineno)
    view->line[i].lineno = lineno++;
 }
}
