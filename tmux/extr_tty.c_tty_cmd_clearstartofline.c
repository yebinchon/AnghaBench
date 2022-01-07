
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct window_pane {int dummy; } ;
struct tty_ctx {int bg; scalar_t__ ocx; int ocy; struct window_pane* wp; } ;
struct tty {int dummy; } ;


 int tty_clear_pane_line (struct tty*,struct tty_ctx const*,int ,int ,scalar_t__,int ) ;
 int tty_default_attributes (struct tty*,struct window_pane*,int ) ;

void
tty_cmd_clearstartofline(struct tty *tty, const struct tty_ctx *ctx)
{
 struct window_pane *wp = ctx->wp;

 tty_default_attributes(tty, wp, ctx->bg);

 tty_clear_pane_line(tty, ctx, ctx->ocy, 0, ctx->ocx + 1, ctx->bg);
}
