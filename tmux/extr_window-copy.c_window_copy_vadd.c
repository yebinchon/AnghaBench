
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
typedef int u_int ;
struct screen {int cy; } ;
struct window_pane {struct screen base; int modes; } ;
struct window_mode_entry {struct window_copy_mode_data* data; } ;
struct window_copy_mode_data {int backing_written; struct screen* backing; struct screen screen; int oy; } ;
struct screen_write_ctx {int dummy; } ;
struct grid_cell {int dummy; } ;


 struct window_mode_entry* TAILQ_FIRST (int *) ;
 int grid_default_cell ;
 int memcpy (struct grid_cell*,int *,int) ;
 int screen_hsize (struct screen*) ;
 int screen_write_carriagereturn (struct screen_write_ctx*) ;
 int screen_write_linefeed (struct screen_write_ctx*,int ,int) ;
 int screen_write_start (struct screen_write_ctx*,struct window_pane*,struct screen*) ;
 int screen_write_stop (struct screen_write_ctx*) ;
 int screen_write_vnputs (struct screen_write_ctx*,int ,struct grid_cell*,char const*,int ) ;
 int window_copy_redraw_lines (struct window_mode_entry*,int,int) ;

void
window_copy_vadd(struct window_pane *wp, const char *fmt, va_list ap)
{
 struct window_mode_entry *wme = TAILQ_FIRST(&wp->modes);
 struct window_copy_mode_data *data = wme->data;
 struct screen *backing = data->backing;
 struct screen_write_ctx back_ctx, ctx;
 struct grid_cell gc;
 u_int old_hsize, old_cy;

 if (backing == &wp->base)
  return;

 memcpy(&gc, &grid_default_cell, sizeof gc);

 old_hsize = screen_hsize(data->backing);
 screen_write_start(&back_ctx, ((void*)0), backing);
 if (data->backing_written) {




  screen_write_carriagereturn(&back_ctx);
  screen_write_linefeed(&back_ctx, 0, 8);
 } else
  data->backing_written = 1;
 old_cy = backing->cy;
 screen_write_vnputs(&back_ctx, 0, &gc, fmt, ap);
 screen_write_stop(&back_ctx);

 data->oy += screen_hsize(data->backing) - old_hsize;

 screen_write_start(&ctx, wp, &data->screen);





 if (screen_hsize(data->backing))
  window_copy_redraw_lines(wme, 0, 1);


 window_copy_redraw_lines(wme, old_cy, backing->cy - old_cy + 1);

 screen_write_stop(&ctx);
}
