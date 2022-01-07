
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ lineno; } ;
struct view {int lines; scalar_t__ update_secs; scalar_t__ custom_lines; scalar_t__* vid; TYPE_2__* line; scalar_t__ columns; TYPE_3__ pos; TYPE_1__* env; TYPE_3__ prev_pos; int prev; } ;
struct TYPE_5__ {struct TYPE_5__* data; } ;
struct TYPE_4__ {scalar_t__ goto_lineno; } ;


 int clear_position (TYPE_3__*) ;
 int free (TYPE_2__*) ;
 int reset_search (struct view*) ;
 int view_column_reset (struct view*) ;

void
reset_view(struct view *view)
{
 int i;

 for (i = 0; i < view->lines; i++)
  free(view->line[i].data);
 free(view->line);

 reset_search(view);
 view->prev_pos = view->pos;

 if (!view->prev && !view->lines && view->prev_pos.lineno == 0)
  view->prev_pos.lineno = view->env->goto_lineno;
 clear_position(&view->pos);

 if (view->columns)
  view_column_reset(view);

 view->line = ((void*)0);
 view->lines = 0;
 view->vid[0] = 0;
 view->custom_lines = 0;
 view->update_secs = 0;
}
