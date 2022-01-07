
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct tty_ctx {int wp; } ;
struct tty {int dummy; } ;


 scalar_t__ tty_clamp_area (struct tty*,struct tty_ctx const*,int ,int ,int ,int ,int *,int *,int *,int *,int *,int *) ;
 int tty_clear_area (struct tty*,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void
tty_clear_pane_area(struct tty *tty, const struct tty_ctx *ctx, u_int py,
    u_int ny, u_int px, u_int nx, u_int bg)
{
 u_int i, j, x, y, rx, ry;

 if (tty_clamp_area(tty, ctx, px, py, nx, ny, &i, &j, &x, &y, &rx, &ry))
  tty_clear_area(tty, ctx->wp, y, ry, x, rx, bg);
}
