
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct window_pane {int screen; } ;
struct tty_ctx {int bg; scalar_t__ ocy; scalar_t__ ocx; struct window_pane* wp; } ;
struct tty {int dummy; } ;


 scalar_t__ screen_size_x (int ) ;
 scalar_t__ screen_size_y (int ) ;
 int tty_clear_pane_area (struct tty*,struct tty_ctx const*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int ) ;
 int tty_clear_pane_line (struct tty*,struct tty_ctx const*,scalar_t__,scalar_t__,scalar_t__,int ) ;
 int tty_default_attributes (struct tty*,struct window_pane*,int ) ;
 int tty_margin_off (struct tty*) ;
 int tty_region_pane (struct tty*,struct tty_ctx const*,int ,scalar_t__) ;

void
tty_cmd_clearendofscreen(struct tty *tty, const struct tty_ctx *ctx)
{
 struct window_pane *wp = ctx->wp;
 u_int px, py, nx, ny;

 tty_default_attributes(tty, wp, ctx->bg);

 tty_region_pane(tty, ctx, 0, screen_size_y(wp->screen) - 1);
 tty_margin_off(tty);

 px = 0;
 nx = screen_size_x(wp->screen);
 py = ctx->ocy + 1;
 ny = screen_size_y(wp->screen) - ctx->ocy - 1;

 tty_clear_pane_area(tty, ctx, py, ny, px, nx, ctx->bg);

 px = ctx->ocx;
 nx = screen_size_x(wp->screen) - ctx->ocx;
 py = ctx->ocy;

 tty_clear_pane_line(tty, ctx, py, px, nx, ctx->bg);
}
