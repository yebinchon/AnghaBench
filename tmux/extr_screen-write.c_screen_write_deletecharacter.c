
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct tty_ctx {scalar_t__ num; scalar_t__ bg; } ;
struct screen_write_ctx {struct screen* s; } ;
struct screen {scalar_t__ cx; int cy; int grid; } ;


 int grid_view_delete_cells (int ,int,int ,scalar_t__,scalar_t__) ;
 int screen_size_x (struct screen*) ;
 int screen_write_collect_flush (struct screen_write_ctx*,int ) ;
 int screen_write_initctx (struct screen_write_ctx*,struct tty_ctx*) ;
 int tty_cmd_deletecharacter ;
 int tty_write (int ,struct tty_ctx*) ;

void
screen_write_deletecharacter(struct screen_write_ctx *ctx, u_int nx, u_int bg)
{
 struct screen *s = ctx->s;
 struct tty_ctx ttyctx;

 if (nx == 0)
  nx = 1;

 if (nx > screen_size_x(s) - s->cx)
  nx = screen_size_x(s) - s->cx;
 if (nx == 0)
  return;

 if (s->cx > screen_size_x(s) - 1)
  return;

 screen_write_initctx(ctx, &ttyctx);
 ttyctx.bg = bg;

 grid_view_delete_cells(s->grid, s->cx, s->cy, nx, bg);

 screen_write_collect_flush(ctx, 0);
 ttyctx.num = nx;
 tty_write(tty_cmd_deletecharacter, &ttyctx);
}
