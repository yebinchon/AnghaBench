
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct screen_write_ctx {struct screen* s; } ;
struct screen {scalar_t__ cx; scalar_t__ cy; } ;


 int screen_size_x (struct screen*) ;
 int screen_write_set_cursor (struct screen_write_ctx*,scalar_t__,scalar_t__) ;

void
screen_write_cursorright(struct screen_write_ctx *ctx, u_int nx)
{
 struct screen *s = ctx->s;
 u_int cx = s->cx, cy = s->cy;

 if (nx == 0)
  nx = 1;

 if (nx > screen_size_x(s) - 1 - cx)
  nx = screen_size_x(s) - 1 - cx;
 if (nx == 0)
  return;

 cx += nx;

 screen_write_set_cursor(ctx, cx, cy);
}
