
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct tty_ctx {int bg; } ;
struct screen_write_ctx {struct screen* s; } ;
struct screen {scalar_t__ cy; scalar_t__ rupper; int rlower; int grid; } ;


 int grid_view_scroll_region_down (int ,scalar_t__,int ,int ) ;
 int screen_write_collect_flush (struct screen_write_ctx*,int ) ;
 int screen_write_initctx (struct screen_write_ctx*,struct tty_ctx*) ;
 int screen_write_set_cursor (struct screen_write_ctx*,int,scalar_t__) ;
 int tty_cmd_reverseindex ;
 int tty_write (int ,struct tty_ctx*) ;

void
screen_write_reverseindex(struct screen_write_ctx *ctx, u_int bg)
{
 struct screen *s = ctx->s;
 struct tty_ctx ttyctx;

 screen_write_initctx(ctx, &ttyctx);
 ttyctx.bg = bg;

 if (s->cy == s->rupper)
  grid_view_scroll_region_down(s->grid, s->rupper, s->rlower, bg);
 else if (s->cy > 0)
  screen_write_set_cursor(ctx, -1, s->cy - 1);

 screen_write_collect_flush(ctx, 0);
 tty_write(tty_cmd_reverseindex, &ttyctx);
}
