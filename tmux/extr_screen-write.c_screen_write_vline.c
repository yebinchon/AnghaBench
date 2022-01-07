
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct screen_write_ctx {struct screen* s; } ;
struct screen {int cx; int cy; } ;
struct grid_cell {int attr; } ;


 int GRID_ATTR_CHARSET ;
 int grid_default_cell ;
 int memcpy (struct grid_cell*,int *,int) ;
 int screen_write_putc (struct screen_write_ctx*,struct grid_cell*,char) ;
 int screen_write_set_cursor (struct screen_write_ctx*,int,int) ;

void
screen_write_vline(struct screen_write_ctx *ctx, u_int ny, int top, int bottom)
{
 struct screen *s = ctx->s;
 struct grid_cell gc;
 u_int cx, cy, i;

 cx = s->cx;
 cy = s->cy;

 memcpy(&gc, &grid_default_cell, sizeof gc);
 gc.attr |= GRID_ATTR_CHARSET;

 screen_write_putc(ctx, &gc, top ? 'w' : 'x');
 for (i = 1; i < ny - 1; i++) {
  screen_write_set_cursor(ctx, cx, cy + i);
  screen_write_putc(ctx, &gc, 'x');
 }
 screen_write_set_cursor(ctx, cx, cy + ny - 1);
 screen_write_putc(ctx, &gc, bottom ? 'v' : 'x');

 screen_write_set_cursor(ctx, cx, cy);
}
