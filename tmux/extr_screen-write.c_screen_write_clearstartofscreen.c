
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct tty_ctx {int bg; } ;
struct screen_write_ctx {struct screen* s; } ;
struct screen {scalar_t__ cy; int cx; int grid; } ;


 int grid_view_clear (int ,int ,int,int,int,int) ;
 int screen_size_x (struct screen*) ;
 int screen_write_collect_clear (struct screen_write_ctx*,int ,int) ;
 int screen_write_collect_flush (struct screen_write_ctx*,int ) ;
 int screen_write_initctx (struct screen_write_ctx*,struct tty_ctx*) ;
 int tty_cmd_clearstartofscreen ;
 int tty_write (int ,struct tty_ctx*) ;

void
screen_write_clearstartofscreen(struct screen_write_ctx *ctx, u_int bg)
{
 struct screen *s = ctx->s;
 struct tty_ctx ttyctx;
 u_int sx = screen_size_x(s);

 screen_write_initctx(ctx, &ttyctx);
 ttyctx.bg = bg;

 if (s->cy > 0)
  grid_view_clear(s->grid, 0, 0, sx, s->cy, bg);
 if (s->cx > sx - 1)
  grid_view_clear(s->grid, 0, s->cy, sx, 1, bg);
 else
  grid_view_clear(s->grid, 0, s->cy, s->cx + 1, 1, bg);

 screen_write_collect_clear(ctx, 0, s->cy);
 screen_write_collect_flush(ctx, 0);
 tty_write(tty_cmd_clearstartofscreen, &ttyctx);
}
