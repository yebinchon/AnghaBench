
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int lineno; int offset; } ;
struct view {int lines; int height; int win; TYPE_2__ pos; int * line; TYPE_1__* ops; } ;
typedef enum request { ____Placeholder_request } request ;
struct TYPE_3__ {int (* select ) (struct view*,int *) ;} ;


 int ABS (int) ;
 int assert (int) ;
 int die (char*,int) ;
 int do_scroll_view (struct view*,int) ;
 int draw_view_line (struct view*,size_t) ;
 int opt_mouse_scroll ;
 int report (char*) ;
 int report_clear () ;
 int stub1 (struct view*,int *) ;
 int view_is_displayed (struct view*) ;
 int wnoutrefresh (int ) ;

void
move_view(struct view *view, enum request request)
{
 int scroll_steps = 0;
 int steps;

 switch (request) {
 case 138:
  steps = -view->pos.lineno;
  break;

 case 135:
  steps = view->lines - view->pos.lineno - 1;
  break;

 case 133:
  steps = view->height > view->pos.lineno
        ? -view->pos.lineno : -view->height;
  break;

 case 134:
  steps = view->pos.lineno + view->height >= view->lines
        ? view->lines - view->pos.lineno - 1 : view->height;
  break;

 case 136:
  steps = view->height / 2 > view->pos.lineno
        ? -view->pos.lineno : -(view->height / 2);
  break;

 case 137:
  steps = view->pos.lineno + view->height / 2 >= view->lines
        ? view->lines - view->pos.lineno - 1 : view->height / 2;
  break;

 case 131:
  steps = opt_mouse_scroll;
  break;

 case 130:
  steps = -opt_mouse_scroll;
  break;

 case 132:
 case 128:
  steps = -1;
  break;

 case 139:
 case 129:
  steps = 1;
  break;

 default:
  die("request %d not handled in switch", request);
 }

 if (steps <= 0 && view->pos.lineno == 0) {
  report("Cannot move beyond the first line");
  return;

 } else if (steps >= 0 && view->pos.lineno + 1 >= view->lines) {
  report("Cannot move beyond the last line");
  return;
 }


 view->pos.lineno += steps;
 assert(0 <= view->pos.lineno && view->pos.lineno < view->lines);


 if (view->pos.lineno < view->pos.offset ||
     view->pos.lineno >= view->pos.offset + view->height) {
  scroll_steps = steps;
  if (steps < 0 && -steps > view->pos.offset) {
   scroll_steps = -view->pos.offset;

  } else if (steps > 0) {
   if (view->pos.lineno == view->lines - 1 &&
       view->lines > view->height) {
    scroll_steps = view->lines - view->pos.offset - 1;
    if (scroll_steps >= view->height)
     scroll_steps -= view->height - 1;
   }
  }
 }

 if (!view_is_displayed(view)) {
  view->pos.offset += scroll_steps;
  assert(0 <= view->pos.offset && view->pos.offset < view->lines);
  view->ops->select(view, &view->line[view->pos.lineno]);
  return;
 }


 if (ABS(steps) < view->height)
  draw_view_line(view, view->pos.lineno - steps - view->pos.offset);

 if (scroll_steps) {
  do_scroll_view(view, scroll_steps);
  return;
 }


 draw_view_line(view, view->pos.lineno - view->pos.offset);

 wnoutrefresh(view->win);
 report_clear();
}
