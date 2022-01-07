
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct window_pane {int screen; } ;
struct tty_ctx {int bg; int ocy; struct window_pane* wp; } ;
struct tty {int dummy; } ;


 int screen_size_x (int ) ;
 int tty_clear_pane_line (struct tty*,struct tty_ctx const*,int ,int ,int ,int ) ;
 int tty_default_attributes (struct tty*,struct window_pane*,int ) ;

void
tty_cmd_clearline(struct tty *tty, const struct tty_ctx *ctx)
{
 struct window_pane *wp = ctx->wp;
 u_int nx;

 tty_default_attributes(tty, wp, ctx->bg);

 nx = screen_size_x(wp->screen);
 tty_clear_pane_line(tty, ctx, ctx->ocy, 0, nx, ctx->bg);
}
