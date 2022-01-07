
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct window {struct layout_cell* layout_root; } ;
struct layout_cell {scalar_t__ sx; scalar_t__ sy; } ;


 int LAYOUT_LEFTRIGHT ;
 int LAYOUT_TOPBOTTOM ;
 int layout_fix_offsets (struct window*) ;
 int layout_fix_panes (struct window*) ;
 int layout_resize_adjust (struct window*,struct layout_cell*,int ,int) ;
 int layout_resize_check (struct window*,struct layout_cell*,int ) ;

void
layout_resize(struct window *w, u_int sx, u_int sy)
{
 struct layout_cell *lc = w->layout_root;
 int xlimit, ylimit, xchange, ychange;
 xchange = sx - lc->sx;
 xlimit = layout_resize_check(w, lc, LAYOUT_LEFTRIGHT);
 if (xchange < 0 && xchange < -xlimit)
  xchange = -xlimit;
 if (xlimit == 0) {
  if (sx <= lc->sx)
   xchange = 0;
  else
   xchange = sx - lc->sx;
 }
 if (xchange != 0)
  layout_resize_adjust(w, lc, LAYOUT_LEFTRIGHT, xchange);


 ychange = sy - lc->sy;
 ylimit = layout_resize_check(w, lc, LAYOUT_TOPBOTTOM);
 if (ychange < 0 && ychange < -ylimit)
  ychange = -ylimit;
 if (ylimit == 0) {
  if (sy <= lc->sy)
   ychange = 0;
  else
   ychange = sy - lc->sy;
 }
 if (ychange != 0)
  layout_resize_adjust(w, lc, LAYOUT_TOPBOTTOM, ychange);


 layout_fix_offsets(w);
 layout_fix_panes(w);
}
