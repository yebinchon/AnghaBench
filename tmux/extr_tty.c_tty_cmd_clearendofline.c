
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct window_pane {int screen; } ;
struct tty_ctx {int bg; scalar_t__ ocx; int ocy; struct window_pane* wp; } ;
struct tty {int dummy; } ;


 scalar_t__ screen_size_x (int ) ;
 int tty_clear_pane_line (struct tty*,struct tty_ctx const*,int ,scalar_t__,scalar_t__,int ) ;
 int tty_default_attributes (struct tty*,struct window_pane*,int ) ;

void
tty_cmd_clearendofline(struct tty *tty, const struct tty_ctx *ctx)
{
 struct window_pane *wp = ctx->wp;
 u_int nx;

 tty_default_attributes(tty, wp, ctx->bg);

 nx = screen_size_x(wp->screen) - ctx->ocx;
 tty_clear_pane_line(tty, ctx, ctx->ocy, ctx->ocx, nx, ctx->bg);
}
