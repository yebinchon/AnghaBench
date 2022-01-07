
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct position {scalar_t__ offset; size_t lineno; } ;
struct view {struct position pos; int * line; TYPE_1__* ops; int win; } ;
struct TYPE_2__ {int (* select ) (struct view*,int *) ;} ;


 int draw_view_line (struct view*,size_t) ;
 scalar_t__ goto_view_line (struct view*,scalar_t__,unsigned long) ;
 int redraw_view (struct view*) ;
 int stub1 (struct view*,int *) ;
 scalar_t__ view_is_displayed (struct view*) ;
 int wnoutrefresh (int ) ;

void
select_view_line(struct view *view, unsigned long lineno)
{
 struct position old = view->pos;

 if (goto_view_line(view, view->pos.offset, lineno)) {
  if (view_is_displayed(view)) {
   if (old.offset != view->pos.offset) {
    redraw_view(view);
   } else {
    draw_view_line(view, old.lineno - view->pos.offset);
    draw_view_line(view, view->pos.lineno - view->pos.offset);
    wnoutrefresh(view->win);
   }
  } else {
   view->ops->select(view, &view->line[view->pos.lineno]);
  }
 }
}
