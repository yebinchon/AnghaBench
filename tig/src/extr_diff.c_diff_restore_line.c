
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct view {int lines; struct line* line; } ;
struct line {scalar_t__ type; } ;
struct TYPE_2__ {unsigned long lineno; unsigned long offset; } ;
struct diff_state {unsigned int lineno; TYPE_1__ pos; int * file; } ;


 scalar_t__ LINE_DIFF_CHUNK ;
 scalar_t__ LINE_DIFF_DEL ;
 scalar_t__ LINE_DIFF_DEL2 ;
 int LINE_DIFF_HEADER ;
 unsigned int diff_get_lineno (struct view*,struct line*) ;
 char* diff_get_pathname (struct view*,struct line*) ;
 struct line* find_next_line_by_type (struct view*,struct line*,scalar_t__) ;
 struct line* find_prev_line_by_type (struct view*,struct line*,int ) ;
 int goto_view_line (struct view*,unsigned long,unsigned long) ;
 int redraw_view (struct view*) ;
 int strcmp (char const*,int *) ;
 scalar_t__ view_has_line (struct view*,struct line*) ;

void
diff_restore_line(struct view *view, struct diff_state *state)
{
 struct line *line = &view->line[view->lines - 1];

 if (!state->file)
  return;

 while ((line = find_prev_line_by_type(view, line, LINE_DIFF_HEADER))) {
  const char *file = diff_get_pathname(view, line);

  if (file && !strcmp(file, state->file))
   break;
  line--;
 }

 state->file = ((void*)0);

 if (!line)
  return;

 while ((line = find_next_line_by_type(view, line, LINE_DIFF_CHUNK))) {
  unsigned int lineno = diff_get_lineno(view, line);

  for (line++; view_has_line(view, line) && line->type != LINE_DIFF_CHUNK; line++) {
   if (lineno == state->lineno) {
    unsigned long lineno = line - view->line;
    unsigned long offset = lineno - (state->pos.lineno - state->pos.offset);

    goto_view_line(view, offset, lineno);
    redraw_view(view);
    return;
   }
   if (line->type != LINE_DIFF_DEL &&
       line->type != LINE_DIFF_DEL2)
    lineno++;
  }
 }
}
