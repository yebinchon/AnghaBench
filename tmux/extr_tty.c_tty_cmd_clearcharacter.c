
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_ctx {int num; int wp; int ocy; int ocx; int bg; scalar_t__ bigger; } ;
struct tty {int term; } ;


 int TTYC_ECH ;
 int tty_cursor_pane (struct tty*,struct tty_ctx const*,int ,int ) ;
 int tty_default_attributes (struct tty*,int ,int ) ;
 int tty_draw_pane (struct tty*,struct tty_ctx const*,int ) ;
 int tty_fake_bce (struct tty*,int ,int) ;
 int tty_putcode1 (struct tty*,int ,int ) ;
 int tty_repeat_space (struct tty*,int ) ;
 scalar_t__ tty_term_has (int ,int ) ;

void
tty_cmd_clearcharacter(struct tty *tty, const struct tty_ctx *ctx)
{
 if (ctx->bigger) {
  tty_draw_pane(tty, ctx, ctx->ocy);
  return;
 }

 tty_default_attributes(tty, ctx->wp, ctx->bg);

 tty_cursor_pane(tty, ctx, ctx->ocx, ctx->ocy);

 if (tty_term_has(tty->term, TTYC_ECH) &&
     !tty_fake_bce(tty, ctx->wp, 8))
  tty_putcode1(tty, TTYC_ECH, ctx->num);
 else
  tty_repeat_space(tty, ctx->num);
}
