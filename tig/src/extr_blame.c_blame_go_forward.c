
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct view {TYPE_1__* env; int pos; struct blame_state* private; } ;
struct blame_history_state {int filename; int id; } ;
struct blame_state {struct blame_history_state history_state; } ;
struct blame_commit {char* parent_id; char* id; char* parent_filename; char* filename; } ;
struct blame {int lineno; struct blame_commit* commit; } ;
struct TYPE_2__ {int goto_lineno; int file; int ref; } ;


 int blame_view_history ;
 int push_view_history_state (int *,int *,struct blame_history_state*) ;
 int reload_view (struct view*) ;
 int report (char*) ;
 int setup_blame_parent_line (struct view*,struct blame*) ;
 int strcmp (int ,char const*) ;
 int string_ncopy (int ,char const*,int) ;
 int strlen (char const*) ;

__attribute__((used)) static void
blame_go_forward(struct view *view, struct blame *blame, bool parent)
{
 struct blame_state *state = view->private;
 struct blame_history_state *history_state = &state->history_state;
 struct blame_commit *commit = blame->commit;
 const char *id = parent ? commit->parent_id : commit->id;
 const char *filename = parent ? commit->parent_filename : commit->filename;

 if (!*id && parent) {
  report("The selected commit has no parents");
  return;
 }

 if (!strcmp(history_state->id, id) && !strcmp(history_state->filename, filename)) {
  report("The selected commit is already displayed");
  return;
 }

 if (!push_view_history_state(&blame_view_history, &view->pos, history_state)) {
  report("Failed to save current view state");
  return;
 }

 string_ncopy(view->env->ref, id, sizeof(commit->id));
 string_ncopy(view->env->file, filename, strlen(filename));
 if (parent)
  setup_blame_parent_line(view, blame);
 view->env->goto_lineno = blame->lineno;
 reload_view(view);
}
