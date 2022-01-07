
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct window_pane {int sx; int sy; } ;
struct tty_ctx {int num; int orlower; int orupper; int bg; scalar_t__ bigger; struct window_pane* wp; } ;
struct tty {int cy; int rlower; int rright; int term; } ;


 int TTYC_CSR ;
 int TTYC_INDN ;
 int tty_cursor (struct tty*,int ,int ) ;
 int tty_default_attributes (struct tty*,struct window_pane*,int ) ;
 scalar_t__ tty_fake_bce (struct tty*,struct window_pane*,int) ;
 int tty_margin_pane (struct tty*,struct tty_ctx const*) ;
 int tty_pane_full_width (struct tty*,struct tty_ctx const*) ;
 int tty_putc (struct tty*,char) ;
 int tty_putcode1 (struct tty*,int ,scalar_t__) ;
 int tty_redraw_region (struct tty*,struct tty_ctx const*) ;
 int tty_region_pane (struct tty*,struct tty_ctx const*,int ,int ) ;
 int tty_term_has (int ,int ) ;
 int tty_use_margin (struct tty*) ;

void
tty_cmd_scrollup(struct tty *tty, const struct tty_ctx *ctx)
{
 struct window_pane *wp = ctx->wp;
 u_int i;

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

 if (ctx->num == 1 || !tty_term_has(tty->term, TTYC_INDN)) {
  if (!tty_use_margin(tty))
   tty_cursor(tty, 0, tty->rlower);
  else
   tty_cursor(tty, tty->rright, tty->rlower);
  for (i = 0; i < ctx->num; i++)
   tty_putc(tty, '\n');
 } else {
  tty_cursor(tty, 0, tty->cy);
  tty_putcode1(tty, TTYC_INDN, ctx->num);
 }
}
