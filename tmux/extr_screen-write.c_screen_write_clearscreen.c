
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int ;
struct tty_ctx {int bg; } ;
struct screen_write_ctx {struct screen* s; } ;
struct screen {TYPE_1__* grid; } ;
struct TYPE_3__ {int flags; } ;


 int GRID_HISTORY ;
 int grid_view_clear (TYPE_1__*,int ,int ,int ,int ,int ) ;
 int grid_view_clear_history (TYPE_1__*,int ) ;
 int screen_size_x (struct screen*) ;
 int screen_size_y (struct screen*) ;
 int screen_write_collect_clear (struct screen_write_ctx*,int ,int ) ;
 int screen_write_initctx (struct screen_write_ctx*,struct tty_ctx*) ;
 int tty_cmd_clearscreen ;
 int tty_write (int ,struct tty_ctx*) ;

void
screen_write_clearscreen(struct screen_write_ctx *ctx, u_int bg)
{
 struct screen *s = ctx->s;
 struct tty_ctx ttyctx;
 u_int sx = screen_size_x(s), sy = screen_size_y(s);

 screen_write_initctx(ctx, &ttyctx);
 ttyctx.bg = bg;


 if (s->grid->flags & GRID_HISTORY)
  grid_view_clear_history(s->grid, bg);
 else
  grid_view_clear(s->grid, 0, 0, sx, sy, bg);

 screen_write_collect_clear(ctx, 0, sy);
 tty_write(tty_cmd_clearscreen, &ttyctx);
}
