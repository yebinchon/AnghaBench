
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct window_pane {int sx; int sy; } ;
struct tty_ctx {scalar_t__ ocy; scalar_t__ orlower; scalar_t__ xoff; scalar_t__ ocx; scalar_t__ yoff; int orupper; int bg; scalar_t__ bigger; struct window_pane* wp; } ;
struct tty {scalar_t__ rright; int term; } ;


 int TTYC_CSR ;
 int tty_cursor (struct tty*,scalar_t__,scalar_t__) ;
 int tty_cursor_pane (struct tty*,struct tty_ctx const*,scalar_t__,scalar_t__) ;
 int tty_default_attributes (struct tty*,struct window_pane*,int ) ;
 scalar_t__ tty_fake_bce (struct tty*,struct window_pane*,int) ;
 int tty_margin_pane (struct tty*,struct tty_ctx const*) ;
 int tty_pane_full_width (struct tty*,struct tty_ctx const*) ;
 int tty_putc (struct tty*,char) ;
 int tty_redraw_region (struct tty*,struct tty_ctx const*) ;
 int tty_region_pane (struct tty*,struct tty_ctx const*,int ,scalar_t__) ;
 int tty_term_has (int ,int ) ;
 int tty_use_margin (struct tty*) ;

void
tty_cmd_linefeed(struct tty *tty, const struct tty_ctx *ctx)
{
 struct window_pane *wp = ctx->wp;

 if (ctx->ocy != ctx->orlower)
  return;

 if (ctx->bigger ||
     (!tty_pane_full_width(tty, ctx) && !tty_use_margin(tty)) ||
     tty_fake_bce(tty, wp, 8) ||
     !tty_term_has(tty->term, TTYC_CSR) ||
     wp->sx == 1 ||
     wp->sy == 1) {
  tty_redraw_region(tty, ctx);
  return;
 }

 tty_default_attributes(tty, wp, ctx->bg);

 tty_region_pane(tty, ctx, ctx->orupper, ctx->orlower);
 tty_margin_pane(tty, ctx);
 if (ctx->xoff + ctx->ocx > tty->rright) {
  if (!tty_use_margin(tty))
   tty_cursor(tty, 0, ctx->yoff + ctx->ocy);
  else
   tty_cursor(tty, tty->rright, ctx->yoff + ctx->ocy);
 } else
  tty_cursor_pane(tty, ctx, ctx->ocx, ctx->ocy);

 tty_putc(tty, '\n');
}
