
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u_int ;
struct screen_write_ctx {struct screen* s; } ;
struct screen {scalar_t__ cx; scalar_t__ cy; struct grid* grid; } ;
struct TYPE_2__ {scalar_t__ width; } ;
struct grid_cell {TYPE_1__ data; int bg; int fg; int attr; } ;
struct grid {int dummy; } ;
typedef int bitstr_t ;


 scalar_t__ bit_test (int *,scalar_t__) ;
 int grid_get_cell (struct grid*,scalar_t__,scalar_t__,struct grid_cell*) ;
 scalar_t__ screen_size_x (struct screen*) ;
 int screen_write_cell (struct screen_write_ctx*,struct grid_cell*) ;
 int screen_write_set_cursor (struct screen_write_ctx*,scalar_t__,scalar_t__) ;

void
screen_write_copy(struct screen_write_ctx *ctx, struct screen *src, u_int px,
    u_int py, u_int nx, u_int ny, bitstr_t *mbs, const struct grid_cell *mgc)
{
 struct screen *s = ctx->s;
 struct grid *gd = src->grid;
 struct grid_cell gc;
 u_int xx, yy, cx, cy, b;

 if (nx == 0 || ny == 0)
  return;

 cx = s->cx;
 cy = s->cy;

 for (yy = py; yy < py + ny; yy++) {
  for (xx = px; xx < px + nx; xx++) {
   grid_get_cell(gd, xx, yy, &gc);
   if (mbs != ((void*)0)) {
    b = (yy * screen_size_x(src)) + xx;
    if (bit_test(mbs, b)) {
     gc.attr = mgc->attr;
     gc.fg = mgc->fg;
     gc.bg = mgc->bg;
    }
   }
   if (xx + gc.data.width <= px + nx)
    screen_write_cell(ctx, &gc);
  }
  cy++;
  screen_write_set_cursor(ctx, cx, cy);
 }
}
