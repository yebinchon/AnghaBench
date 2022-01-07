
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ offset; scalar_t__ lineno; } ;
struct view {scalar_t__ lines; int height; int has_scrolled; int win; TYPE_1__ pos; } ;


 int ABS (int) ;
 int assert (int) ;
 scalar_t__ draw_view_line (struct view*,int) ;
 int redraw_view (struct view*) ;
 int report_clear () ;
 int scrollok (int ,int) ;
 int wnoutrefresh (int ) ;
 int wscrl (int ,int) ;

void
do_scroll_view(struct view *view, int lines)
{
 bool redraw_current_line = 0;


 view->pos.offset += lines;

 assert(0 <= view->pos.offset && view->pos.offset < view->lines);
 assert(lines);


 if (view->pos.lineno < view->pos.offset) {
  view->pos.lineno = view->pos.offset;
  redraw_current_line = 1;
 } else if (view->pos.lineno >= view->pos.offset + view->height) {
  view->pos.lineno = view->pos.offset + view->height - 1;
  redraw_current_line = 1;
 }

 assert(view->pos.offset <= view->pos.lineno && view->pos.lineno < view->lines);


 if (view->height < ABS(lines)) {
  redraw_view(view);

 } else {
  int line = lines > 0 ? view->height - lines : 0;
  int end = line + ABS(lines);

  scrollok(view->win, 1);
  wscrl(view->win, lines);
  scrollok(view->win, 0);

  while (line < end && draw_view_line(view, line))
   line++;

  if (redraw_current_line)
   draw_view_line(view, view->pos.lineno - view->pos.offset);
  wnoutrefresh(view->win);
 }

 view->has_scrolled = 1;
 report_clear();
}
