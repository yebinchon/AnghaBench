
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct tty_ctx {scalar_t__ num; scalar_t__ bg; } ;
struct screen_write_ctx {struct screen* s; } ;
struct screen {scalar_t__ rlower; scalar_t__ rupper; struct grid* grid; } ;
struct grid {int dummy; } ;


 int grid_view_scroll_region_down (struct grid*,scalar_t__,scalar_t__,scalar_t__) ;
 int screen_write_collect_flush (struct screen_write_ctx*,int ) ;
 int screen_write_initctx (struct screen_write_ctx*,struct tty_ctx*) ;
 int tty_cmd_scrolldown ;
 int tty_write (int ,struct tty_ctx*) ;

void
screen_write_scrolldown(struct screen_write_ctx *ctx, u_int lines, u_int bg)
{
 struct screen *s = ctx->s;
 struct grid *gd = s->grid;
 struct tty_ctx ttyctx;
 u_int i;

 screen_write_initctx(ctx, &ttyctx);
 ttyctx.bg = bg;

 if (lines == 0)
  lines = 1;
 else if (lines > s->rlower - s->rupper + 1)
  lines = s->rlower - s->rupper + 1;

 for (i = 0; i < lines; i++)
  grid_view_scroll_region_down(gd, s->rupper, s->rlower, bg);

 screen_write_collect_flush(ctx, 0);
 ttyctx.num = lines;
 tty_write(tty_cmd_scrolldown, &ttyctx);
}
