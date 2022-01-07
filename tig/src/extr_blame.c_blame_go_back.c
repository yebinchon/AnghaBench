
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int lineno; } ;
struct view {TYPE_2__ pos; TYPE_1__* env; } ;
struct blame_history_state {int filename; int id; } ;
struct TYPE_3__ {int goto_lineno; int file; int ref; } ;


 int blame_view_history ;
 int pop_view_history_state (int *,TYPE_2__*,struct blame_history_state*) ;
 int reload_view (struct view*) ;
 int report (char*) ;
 int string_copy (int ,int ) ;
 int string_ncopy (int ,int ,int ) ;
 int strlen (int ) ;

__attribute__((used)) static void
blame_go_back(struct view *view)
{
 struct blame_history_state history_state;

 if (!pop_view_history_state(&blame_view_history, &view->pos, &history_state)) {
  report("Already at start of history");
  return;
 }

 string_copy(view->env->ref, history_state.id);
 string_ncopy(view->env->file, history_state.filename, strlen(history_state.filename));
 view->env->goto_lineno = view->pos.lineno;
 reload_view(view);
}
