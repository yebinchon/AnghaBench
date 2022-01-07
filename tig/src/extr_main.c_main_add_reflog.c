
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ display; } ;
struct TYPE_4__ {TYPE_1__ id; } ;
struct view_column {TYPE_2__ opt; } ;
struct view {int force_redraw; } ;
struct main_state {char** reflog; int reflog_width; int reflogs; } ;


 int VIEW_COLUMN_ID ;
 struct view_column* get_view_column (struct view*,int ) ;
 int realloc_reflogs (char***,int ,int) ;
 char* strchr (char*,char) ;
 char* strdup (char*) ;
 int strlen (char*) ;

__attribute__((used)) static bool
main_add_reflog(struct view *view, struct main_state *state, char *reflog)
{
 char *end = strchr(reflog, ' ');
 int id_width;

 if (!end)
  return 0;
 *end = 0;

 if (!realloc_reflogs(&state->reflog, state->reflogs, 1)
     || !(reflog = strdup(reflog)))
  return 0;

 state->reflog[state->reflogs++] = reflog;
 id_width = strlen(reflog);
 if (state->reflog_width < id_width) {
  struct view_column *column = get_view_column(view, VIEW_COLUMN_ID);

  state->reflog_width = id_width;
  if (column && column->opt.id.display)
   view->force_redraw = 1;
 }

 return 1;
}
