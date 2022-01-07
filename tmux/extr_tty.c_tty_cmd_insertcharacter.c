
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct window_pane {int dummy; } ;
struct tty_ctx {int num; int ocy; int ocx; int bg; scalar_t__ bigger; struct window_pane* wp; } ;
struct tty {int term; } ;


 int TTYC_ICH ;
 int TTYC_ICH1 ;
 int tty_cursor_pane (struct tty*,struct tty_ctx const*,int ,int ) ;
 int tty_default_attributes (struct tty*,struct window_pane*,int ) ;
 int tty_draw_pane (struct tty*,struct tty_ctx const*,int ) ;
 int tty_emulate_repeat (struct tty*,int ,int ,int ) ;
 scalar_t__ tty_fake_bce (struct tty*,struct window_pane*,int ) ;
 int tty_pane_full_width (struct tty*,struct tty_ctx const*) ;
 int tty_term_has (int ,int ) ;

void
tty_cmd_insertcharacter(struct tty *tty, const struct tty_ctx *ctx)
{
 struct window_pane *wp = ctx->wp;

 if (ctx->bigger ||
     !tty_pane_full_width(tty, ctx) ||
     tty_fake_bce(tty, wp, ctx->bg) ||
     (!tty_term_has(tty->term, TTYC_ICH) &&
     !tty_term_has(tty->term, TTYC_ICH1))) {
  tty_draw_pane(tty, ctx, ctx->ocy);
  return;
 }

 tty_default_attributes(tty, wp, ctx->bg);

 tty_cursor_pane(tty, ctx, ctx->ocx, ctx->ocy);

 tty_emulate_repeat(tty, TTYC_ICH, TTYC_ICH1, ctx->num);
}
