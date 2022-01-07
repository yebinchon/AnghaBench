
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct window_pane {int flags; struct screen* screen; } ;
struct tty_ctx {scalar_t__ ocy; scalar_t__ orupper; scalar_t__ orlower; struct window_pane* wp; } ;
struct tty {int dummy; } ;
struct screen {int dummy; } ;


 int PANE_REDRAW ;
 scalar_t__ screen_size_y (struct screen*) ;
 int tty_draw_pane (struct tty*,struct tty_ctx const*,scalar_t__) ;
 scalar_t__ tty_large_region (struct tty*,struct tty_ctx const*) ;

__attribute__((used)) static void
tty_redraw_region(struct tty *tty, const struct tty_ctx *ctx)
{
 struct window_pane *wp = ctx->wp;
 struct screen *s = wp->screen;
 u_int i;





 if (tty_large_region(tty, ctx)) {
  wp->flags |= PANE_REDRAW;
  return;
 }

 if (ctx->ocy < ctx->orupper || ctx->ocy > ctx->orlower) {
  for (i = ctx->ocy; i < screen_size_y(s); i++)
   tty_draw_pane(tty, ctx, i);
 } else {
  for (i = ctx->orupper; i <= ctx->orlower; i++)
   tty_draw_pane(tty, ctx, i);
 }
}
