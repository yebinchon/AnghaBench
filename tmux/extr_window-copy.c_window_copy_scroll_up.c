
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct window_pane {int dummy; } ;
struct window_mode_entry {struct window_copy_mode_data* data; struct window_pane* wp; } ;
struct screen {int * sel; } ;
struct window_copy_mode_data {int oy; int cy; int cx; struct screen screen; } ;
struct screen_write_ctx {int dummy; } ;


 int screen_size_y (struct screen*) ;
 int screen_write_cursormove (struct screen_write_ctx*,int ,int ,int ) ;
 int screen_write_deleteline (struct screen_write_ctx*,int,int) ;
 int screen_write_start (struct screen_write_ctx*,struct window_pane*,int *) ;
 int screen_write_stop (struct screen_write_ctx*) ;
 int window_copy_update_selection (struct window_mode_entry*,int ) ;
 int window_copy_write_line (struct window_mode_entry*,struct screen_write_ctx*,int) ;
 int window_copy_write_lines (struct window_mode_entry*,struct screen_write_ctx*,int,int) ;

__attribute__((used)) static void
window_copy_scroll_up(struct window_mode_entry *wme, u_int ny)
{
 struct window_pane *wp = wme->wp;
 struct window_copy_mode_data *data = wme->data;
 struct screen *s = &data->screen;
 struct screen_write_ctx ctx;

 if (data->oy < ny)
  ny = data->oy;
 if (ny == 0)
  return;
 data->oy -= ny;

 window_copy_update_selection(wme, 0);

 screen_write_start(&ctx, wp, ((void*)0));
 screen_write_cursormove(&ctx, 0, 0, 0);
 screen_write_deleteline(&ctx, ny, 8);
 window_copy_write_lines(wme, &ctx, screen_size_y(s) - ny, ny);
 window_copy_write_line(wme, &ctx, 0);
 if (screen_size_y(s) > 1)
  window_copy_write_line(wme, &ctx, 1);
 if (screen_size_y(s) > 3)
  window_copy_write_line(wme, &ctx, screen_size_y(s) - 2);
 if (s->sel != ((void*)0) && screen_size_y(s) > ny)
  window_copy_write_line(wme, &ctx, screen_size_y(s) - ny - 1);
 screen_write_cursormove(&ctx, data->cx, data->cy, 0);
 screen_write_stop(&ctx);
}
