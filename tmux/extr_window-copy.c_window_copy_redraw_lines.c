
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct window_pane {int dummy; } ;
struct window_mode_entry {struct window_copy_mode_data* data; struct window_pane* wp; } ;
struct window_copy_mode_data {int cy; int cx; } ;
struct screen_write_ctx {int dummy; } ;


 int screen_write_cursormove (struct screen_write_ctx*,int ,int ,int ) ;
 int screen_write_start (struct screen_write_ctx*,struct window_pane*,int *) ;
 int screen_write_stop (struct screen_write_ctx*) ;
 int window_copy_write_line (struct window_mode_entry*,struct screen_write_ctx*,scalar_t__) ;

__attribute__((used)) static void
window_copy_redraw_lines(struct window_mode_entry *wme, u_int py, u_int ny)
{
 struct window_pane *wp = wme->wp;
 struct window_copy_mode_data *data = wme->data;
 struct screen_write_ctx ctx;
 u_int i;

 screen_write_start(&ctx, wp, ((void*)0));
 for (i = py; i < py + ny; i++)
  window_copy_write_line(wme, &ctx, i);
 screen_write_cursormove(&ctx, data->cx, data->cy, 0);
 screen_write_stop(&ctx);
}
