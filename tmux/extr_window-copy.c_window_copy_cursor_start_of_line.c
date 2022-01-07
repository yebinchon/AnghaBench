
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u_int ;
struct window_mode_entry {struct window_copy_mode_data* data; } ;
struct window_copy_mode_data {scalar_t__ cx; scalar_t__ lineflag; scalar_t__ cy; scalar_t__ oy; struct screen* backing; } ;
struct screen {struct grid* grid; } ;
struct grid {int dummy; } ;
struct TYPE_2__ {int flags; } ;


 int GRID_LINE_WRAPPED ;
 scalar_t__ LINE_SEL_NONE ;
 TYPE_1__* grid_get_line (struct grid*,scalar_t__) ;
 scalar_t__ screen_hsize (struct screen*) ;
 int window_copy_cursor_up (struct window_mode_entry*,int ) ;
 int window_copy_redraw_lines (struct window_mode_entry*,scalar_t__,int) ;
 int window_copy_update_cursor (struct window_mode_entry*,int ,scalar_t__) ;
 scalar_t__ window_copy_update_selection (struct window_mode_entry*,int) ;

__attribute__((used)) static void
window_copy_cursor_start_of_line(struct window_mode_entry *wme)
{
 struct window_copy_mode_data *data = wme->data;
 struct screen *back_s = data->backing;
 struct grid *gd = back_s->grid;
 u_int py;

 if (data->cx == 0 && data->lineflag == LINE_SEL_NONE) {
  py = screen_hsize(back_s) + data->cy - data->oy;
  while (py > 0 &&
      grid_get_line(gd, py - 1)->flags & GRID_LINE_WRAPPED) {
   window_copy_cursor_up(wme, 0);
   py = screen_hsize(back_s) + data->cy - data->oy;
  }
 }
 window_copy_update_cursor(wme, 0, data->cy);
 if (window_copy_update_selection(wme, 1))
  window_copy_redraw_lines(wme, data->cy, 1);
}
