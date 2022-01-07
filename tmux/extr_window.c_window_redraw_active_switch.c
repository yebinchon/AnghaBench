
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bg; int fg; } ;
struct style {TYPE_1__ gc; } ;
struct window_pane {int flags; struct style cached_active_style; struct style cached_style; } ;
struct window {struct window_pane* active; } ;


 int PANE_REDRAW ;
 int style_equal (struct style*,struct style*) ;
 int window_pane_get_palette (struct window_pane*,int ) ;

void
window_redraw_active_switch(struct window *w, struct window_pane *wp)
{
 struct style *sy1, *sy2;
 int c1, c2;

 if (wp == w->active)
  return;

 for (;;) {




  sy1 = &wp->cached_style;
  sy2 = &wp->cached_active_style;
  if (!style_equal(sy1, sy2))
   wp->flags |= PANE_REDRAW;
  else {
   c1 = window_pane_get_palette(wp, sy1->gc.fg);
   c2 = window_pane_get_palette(wp, sy2->gc.fg);
   if (c1 != c2)
    wp->flags |= PANE_REDRAW;
   else {
    c1 = window_pane_get_palette(wp, sy1->gc.bg);
    c2 = window_pane_get_palette(wp, sy2->gc.bg);
    if (c1 != c2)
     wp->flags |= PANE_REDRAW;
   }
  }
  if (wp == w->active)
   break;
  wp = w->active;
 }
}
