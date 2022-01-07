
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct screen {int dummy; } ;
struct window_pane {struct screen base; } ;
struct window_mode_entry {struct window_copy_mode_data* data; struct window_pane* wp; } ;
struct window_copy_mode_data {scalar_t__ oy; scalar_t__ searcho; int cy; int searchy; scalar_t__ cx; scalar_t__ searchx; int * searchmark; struct screen* backing; struct screen screen; } ;
struct screen_write_ctx {int dummy; } ;


 scalar_t__ screen_hsize (struct screen*) ;
 int screen_resize (struct screen*,scalar_t__,scalar_t__,int) ;
 scalar_t__ screen_size_y (struct screen*) ;
 int screen_write_start (struct screen_write_ctx*,int *,struct screen*) ;
 int screen_write_stop (struct screen_write_ctx*) ;
 int window_copy_clear_marks (struct window_mode_entry*) ;
 int window_copy_clear_selection (struct window_mode_entry*) ;
 int window_copy_redraw_screen (struct window_mode_entry*) ;
 int window_copy_search_marks (struct window_mode_entry*,int *) ;
 int window_copy_write_lines (struct window_mode_entry*,struct screen_write_ctx*,int ,scalar_t__) ;

__attribute__((used)) static void
window_copy_resize(struct window_mode_entry *wme, u_int sx, u_int sy)
{
 struct window_pane *wp = wme->wp;
 struct window_copy_mode_data *data = wme->data;
 struct screen *s = &data->screen;
 struct screen_write_ctx ctx;
 int search;

 screen_resize(s, sx, sy, 1);
 if (data->backing != &wp->base)
  screen_resize(data->backing, sx, sy, 1);

 if (data->cy > sy - 1)
  data->cy = sy - 1;
 if (data->cx > sx)
  data->cx = sx;
 if (data->oy > screen_hsize(data->backing))
  data->oy = screen_hsize(data->backing);

 search = (data->searchmark != ((void*)0));
 window_copy_clear_selection(wme);
 window_copy_clear_marks(wme);

 screen_write_start(&ctx, ((void*)0), s);
 window_copy_write_lines(wme, &ctx, 0, screen_size_y(s) - 1);
 screen_write_stop(&ctx);

 if (search)
  window_copy_search_marks(wme, ((void*)0));
 data->searchx = data->cx;
 data->searchy = data->cy;
 data->searcho = data->oy;

 window_copy_redraw_screen(wme);
}
