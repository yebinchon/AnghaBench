
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t lineno; } ;
struct view {TYPE_1__ pos; struct line* line; } ;
struct line {int dummy; } ;
struct diff_state {TYPE_1__ pos; int lineno; int file; } ;
typedef enum open_flags { ____Placeholder_open_flags } open_flags ;


 int OPEN_RELOAD ;
 int diff_get_lineno (struct view*,struct line*) ;
 char* diff_get_pathname (struct view*,struct line*) ;
 int get_path (char const*) ;
 scalar_t__ view_has_line (struct view*,struct line*) ;

void
diff_save_line(struct view *view, struct diff_state *state, enum open_flags flags)
{
 if (flags & OPEN_RELOAD) {
  struct line *line = &view->line[view->pos.lineno];
  const char *file = view_has_line(view, line) ? diff_get_pathname(view, line) : ((void*)0);

  if (file) {
   state->file = get_path(file);
   state->lineno = diff_get_lineno(view, line);
   state->pos = view->pos;
  }
 }
}
