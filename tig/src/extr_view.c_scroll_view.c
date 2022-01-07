
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int offset; int col; } ;
struct view {int height; int lines; TYPE_1__ pos; int width; } ;
typedef enum request { ____Placeholder_request } request ;
 int apply_step (int ,int ) ;
 int assert (int ) ;
 int die (char*,int) ;
 int do_scroll_view (struct view*,int) ;
 int opt_horizontal_scroll ;
 int opt_mouse_scroll ;
 int redraw_view (struct view*) ;
 int redraw_view_from (struct view*,int ) ;
 int report (char*) ;
 int report_clear () ;
 int view_is_displayed (struct view*) ;

void
scroll_view(struct view *view, enum request request)
{
 int lines = 1;

 assert(view_is_displayed(view));

 if (request == 129 || request == 128)
  lines = opt_mouse_scroll;

 switch (request) {
 case 136:
  view->pos.col = 0;
  redraw_view_from(view, 0);
  report_clear();
  return;
 case 135:
  if (view->pos.col == 0) {
   report("Cannot scroll beyond the first column");
   return;
  }
  if (view->pos.col <= apply_step(opt_horizontal_scroll, view->width))
   view->pos.col = 0;
  else
   view->pos.col -= apply_step(opt_horizontal_scroll, view->width);
  redraw_view_from(view, 0);
  report_clear();
  return;
 case 130:
  view->pos.col += apply_step(opt_horizontal_scroll, view->width);
  redraw_view(view);
  report_clear();
  return;
 case 132:
  lines = view->height;

 case 129:
 case 134:
  if (view->pos.offset + lines > view->lines)
   lines = view->lines - view->pos.offset;

  if (lines == 0 || view->pos.offset + view->height >= view->lines) {
   report("Cannot scroll beyond the last line");
   return;
  }
  break;

 case 131:
  lines = view->height;

 case 133:
 case 128:
  if (lines > view->pos.offset)
   lines = view->pos.offset;

  if (lines == 0) {
   report("Cannot scroll beyond the first line");
   return;
  }

  lines = -lines;
  break;

 default:
  die("request %d not handled in switch", request);
 }

 do_scroll_view(view, lines);
}
