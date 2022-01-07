
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct tty_ctx {int num; int ocy; int ocx; int orlower; int orupper; int bg; TYPE_1__* wp; scalar_t__ bigger; } ;
struct tty {int cy; int cx; int term; } ;
struct TYPE_3__ {int sx; int sy; } ;


 int TTYC_CSR ;
 int TTYC_DL ;
 int TTYC_DL1 ;
 int UINT_MAX ;
 int tty_cursor_pane (struct tty*,struct tty_ctx const*,int ,int ) ;
 int tty_default_attributes (struct tty*,TYPE_1__*,int ) ;
 int tty_emulate_repeat (struct tty*,int ,int ,int ) ;
 scalar_t__ tty_fake_bce (struct tty*,TYPE_1__*,int ) ;
 int tty_margin_off (struct tty*) ;
 int tty_pane_full_width (struct tty*,struct tty_ctx const*) ;
 int tty_redraw_region (struct tty*,struct tty_ctx const*) ;
 int tty_region_pane (struct tty*,struct tty_ctx const*,int ,int ) ;
 int tty_term_has (int ,int ) ;

void
tty_cmd_deleteline(struct tty *tty, const struct tty_ctx *ctx)
{
 if (ctx->bigger ||
     !tty_pane_full_width(tty, ctx) ||
     tty_fake_bce(tty, ctx->wp, ctx->bg) ||
     !tty_term_has(tty->term, TTYC_CSR) ||
     !tty_term_has(tty->term, TTYC_DL1) ||
     ctx->wp->sx == 1 ||
     ctx->wp->sy == 1) {
  tty_redraw_region(tty, ctx);
  return;
 }

 tty_default_attributes(tty, ctx->wp, ctx->bg);

 tty_region_pane(tty, ctx, ctx->orupper, ctx->orlower);
 tty_margin_off(tty);
 tty_cursor_pane(tty, ctx, ctx->ocx, ctx->ocy);

 tty_emulate_repeat(tty, TTYC_DL, TTYC_DL1, ctx->num);
 tty->cx = tty->cy = UINT_MAX;
}
