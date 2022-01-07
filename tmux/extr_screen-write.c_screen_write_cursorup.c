
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct screen_write_ctx {struct screen* s; } ;
struct screen {scalar_t__ cx; scalar_t__ cy; scalar_t__ rupper; } ;


 scalar_t__ screen_size_x (struct screen*) ;
 int screen_write_set_cursor (struct screen_write_ctx*,scalar_t__,scalar_t__) ;

void
screen_write_cursorup(struct screen_write_ctx *ctx, u_int ny)
{
 struct screen *s = ctx->s;
 u_int cx = s->cx, cy = s->cy;

 if (ny == 0)
  ny = 1;

 if (cy < s->rupper) {

  if (ny > cy)
   ny = cy;
 } else {

  if (ny > cy - s->rupper)
   ny = cy - s->rupper;
 }
 if (cx == screen_size_x(s))
  cx--;

 cy -= ny;

 screen_write_set_cursor(ctx, cx, cy);
}
