
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct window_pane {int flags; struct screen* screen; } ;
struct tty_ctx {scalar_t__ bigger; struct window_pane* wp; } ;
struct tty {int dummy; } ;
struct screen {int dummy; } ;


 int PANE_REDRAW ;
 int grid_default_cell ;
 scalar_t__ screen_size_x (struct screen*) ;
 scalar_t__ screen_size_y (struct screen*) ;
 int tty_attributes (struct tty*,int *,struct window_pane*) ;
 int tty_cursor_pane (struct tty*,struct tty_ctx const*,int ,scalar_t__) ;
 int tty_margin_off (struct tty*) ;
 int tty_putc (struct tty*,char) ;
 int tty_region_pane (struct tty*,struct tty_ctx const*,int ,scalar_t__) ;

void
tty_cmd_alignmenttest(struct tty *tty, const struct tty_ctx *ctx)
{
 struct window_pane *wp = ctx->wp;
 struct screen *s = wp->screen;
 u_int i, j;

 if (ctx->bigger) {
  wp->flags |= PANE_REDRAW;
  return;
 }

 tty_attributes(tty, &grid_default_cell, wp);

 tty_region_pane(tty, ctx, 0, screen_size_y(s) - 1);
 tty_margin_off(tty);

 for (j = 0; j < screen_size_y(s); j++) {
  tty_cursor_pane(tty, ctx, 0, j);
  for (i = 0; i < screen_size_x(s); i++)
   tty_putc(tty, 'E');
 }
}
