
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct view_column_data {TYPE_3__* graph; } ;
struct TYPE_4__ {size_t lineno; } ;
struct view {size_t lines; TYPE_2__* ops; struct line* line; TYPE_1__ pos; } ;
struct line {struct commit* data; } ;
struct graph_canvas {int dummy; } ;
struct commit {struct graph_canvas graph; } ;
typedef size_t ssize_t ;
typedef enum status_code { ____Placeholder_status_code } status_code ;
struct TYPE_6__ {int (* is_merge ) (struct graph_canvas*) ;} ;
struct TYPE_5__ {int (* get_column_data ) (struct view*,struct line*,struct view_column_data*) ;} ;


 int SUCCESS ;
 size_t abs (int) ;
 int select_view_line (struct view*,size_t) ;
 int stub1 (struct view*,struct line*,struct view_column_data*) ;
 int stub2 (struct graph_canvas*) ;
 int success (char*) ;

__attribute__((used)) static enum status_code
find_next_merge_line(struct view *view, int direction, bool wrapped)
{
 int dist;
 size_t max;

 if (wrapped)
  max = view->lines;
 else
  max = direction > 0 ? view->lines - view->pos.lineno
        : view->pos.lineno;

 for (dist = direction; abs(dist) < max; dist += direction) {
  ssize_t lineno = view->pos.lineno + dist;
  if (lineno < 0)
   lineno += view->lines;
  else if (lineno >= view->lines)
   lineno -= view->lines;

  struct line *line = &view->line[lineno];
  struct commit *commit = line->data;
  struct graph_canvas *canvas = &commit->graph;
  struct view_column_data column_data;

  if (!view->ops->get_column_data(view, line, &column_data))
   continue;

  if (column_data.graph && !column_data.graph->is_merge(canvas))
   continue;

  select_view_line(view, lineno);
  return SUCCESS;
 }

 return success("No merge commit found");
}
