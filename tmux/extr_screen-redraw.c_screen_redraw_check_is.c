
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct window_pane {scalar_t__ xoff; int sx; scalar_t__ yoff; int sy; } ;
struct window {int sx; int sy; } ;


 int CELL_INSIDE ;
 int CELL_OUTSIDE ;
 int PANE_STATUS_BOTTOM ;
 int PANE_STATUS_OFF ;
 int PANE_STATUS_TOP ;
 int screen_redraw_cell_border1 (struct window_pane*,int,int) ;
 int window_count_panes (struct window*) ;

__attribute__((used)) static int
screen_redraw_check_is(u_int px, u_int py, int type, int pane_status,
    struct window *w, struct window_pane *wantwp, struct window_pane *wp)
{
 int border;


 border = screen_redraw_cell_border1(wantwp, px, py);
 if (border == 0 || border == -1)
  return (0);
 if (pane_status == PANE_STATUS_TOP && border == 4)
  return (0);
 if (pane_status == PANE_STATUS_BOTTOM && border == 3)
  return (0);


 if (window_count_panes(w) != 2)
  return (1);


 if (wp == ((void*)0) || (type == CELL_OUTSIDE || type == CELL_INSIDE))
  return (1);


 if (pane_status != PANE_STATUS_OFF)
  return (1);


 if (wp->xoff == 0 && wp->sx == w->sx) {

  if (wp->yoff == 0) {
   if (wp == wantwp)
    return (px <= wp->sx / 2);
   return (px > wp->sx / 2);
  }
  return (0);
 }


 if (wp->yoff == 0 && wp->sy == w->sy) {

  if (wp->xoff == 0) {
   if (wp == wantwp)
    return (py <= wp->sy / 2);
   return (py > wp->sy / 2);
  }
  return (0);
 }

 return (1);
}
