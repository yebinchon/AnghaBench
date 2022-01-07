
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u_int ;
struct window_pane {TYPE_1__* window; } ;
struct window_mode_entry {struct window_copy_mode_data* data; struct window_pane* wp; } ;
struct screen {int dummy; } ;
struct window_copy_mode_data {scalar_t__ selx; scalar_t__ sely; scalar_t__ endselx; scalar_t__ endsely; scalar_t__ cy; scalar_t__ cursordrag; scalar_t__ rectflag; int modekeys; struct screen screen; } ;
struct options {int dummy; } ;
struct grid_cell {int flags; } ;
struct TYPE_2__ {struct options* options; } ;


 scalar_t__ CURSORDRAG_ENDSEL ;
 int GRID_FLAG_NOPALETTE ;
 int WINDOW_COPY_REL_POS_ON_SCREEN ;
 int screen_hide_selection (struct screen*) ;
 int screen_set_selection (struct screen*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int ,struct grid_cell*) ;
 int style_apply (struct grid_cell*,struct options*,char*) ;
 int window_copy_adjust_selection (struct window_mode_entry*,scalar_t__*,scalar_t__*) ;
 int window_copy_redraw_lines (struct window_mode_entry*,scalar_t__,scalar_t__) ;
 int window_copy_synchronize_cursor (struct window_mode_entry*) ;

__attribute__((used)) static int
window_copy_set_selection(struct window_mode_entry *wme, int may_redraw)
{
 struct window_pane *wp = wme->wp;
 struct window_copy_mode_data *data = wme->data;
 struct screen *s = &data->screen;
 struct options *oo = wp->window->options;
 struct grid_cell gc;
 u_int sx, sy, cy, endsx, endsy;
 int startrelpos, endrelpos;

 window_copy_synchronize_cursor(wme);


 sx = data->selx;
 sy = data->sely;
 startrelpos = window_copy_adjust_selection(wme, &sx, &sy);


 endsx = data->endselx;
 endsy = data->endsely;
 endrelpos = window_copy_adjust_selection(wme, &endsx, &endsy);


 if (startrelpos == endrelpos &&
     startrelpos != WINDOW_COPY_REL_POS_ON_SCREEN) {
  screen_hide_selection(s);
  return (0);
 }


 style_apply(&gc, oo, "mode-style");
 gc.flags |= GRID_FLAG_NOPALETTE;
 screen_set_selection(s, sx, sy, endsx, endsy, data->rectflag,
     data->modekeys, &gc);

 if (data->rectflag && may_redraw) {





  cy = data->cy;
  if (data->cursordrag == CURSORDRAG_ENDSEL) {
   if (sy < cy)
    window_copy_redraw_lines(wme, sy, cy - sy + 1);
   else
    window_copy_redraw_lines(wme, cy, sy - cy + 1);
  } else {
   if (endsy < cy) {
    window_copy_redraw_lines(wme, endsy,
        cy - endsy + 1);
   } else {
    window_copy_redraw_lines(wme, cy,
        endsy - cy + 1);
   }
  }
 }

 return (1);
}
