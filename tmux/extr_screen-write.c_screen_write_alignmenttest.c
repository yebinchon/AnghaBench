
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct tty_ctx {int dummy; } ;
struct screen_write_ctx {struct screen* s; } ;
struct screen {scalar_t__ rlower; scalar_t__ rupper; int grid; } ;
struct grid_cell {int data; } ;


 int grid_default_cell ;
 int grid_view_set_cell (int ,scalar_t__,scalar_t__,struct grid_cell*) ;
 int memcpy (struct grid_cell*,int *,int) ;
 scalar_t__ screen_size_x (struct screen*) ;
 scalar_t__ screen_size_y (struct screen*) ;
 int screen_write_collect_clear (struct screen_write_ctx*,int ,scalar_t__) ;
 int screen_write_initctx (struct screen_write_ctx*,struct tty_ctx*) ;
 int screen_write_set_cursor (struct screen_write_ctx*,int ,int ) ;
 int tty_cmd_alignmenttest ;
 int tty_write (int ,struct tty_ctx*) ;
 int utf8_set (int *,char) ;

void
screen_write_alignmenttest(struct screen_write_ctx *ctx)
{
 struct screen *s = ctx->s;
 struct tty_ctx ttyctx;
 struct grid_cell gc;
 u_int xx, yy;

 memcpy(&gc, &grid_default_cell, sizeof gc);
 utf8_set(&gc.data, 'E');

 for (yy = 0; yy < screen_size_y(s); yy++) {
  for (xx = 0; xx < screen_size_x(s); xx++)
   grid_view_set_cell(s->grid, xx, yy, &gc);
 }

 screen_write_set_cursor(ctx, 0, 0);

 s->rupper = 0;
 s->rlower = screen_size_y(s) - 1;

 screen_write_initctx(ctx, &ttyctx);

 screen_write_collect_clear(ctx, 0, screen_size_y(s) - 1);
 tty_write(tty_cmd_alignmenttest, &ttyctx);
}
