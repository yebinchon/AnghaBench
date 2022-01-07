
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {float flatness; float linewidth; } ;
typedef TYPE_1__ sctx ;
typedef int fz_context ;


 int FZ_PI ;
 int FZ_SQRT2 ;
 int ceilf (int) ;
 float cosf (float) ;
 int fz_add_line (int *,TYPE_1__*,float,float,float,float,int ) ;
 float sinf (float) ;
 int sqrtf (float) ;

__attribute__((used)) static void
fz_add_line_dot(fz_context *ctx, sctx *s, float ax, float ay)
{
 float flatness = s->flatness;
 float linewidth = s->linewidth;
 int n = ceilf(FZ_PI / (FZ_SQRT2 * sqrtf(flatness / linewidth)));
 float ox = ax - linewidth;
 float oy = ay;
 int i;

 if (n < 3)
  n = 3;
 for (i = 1; i < n; i++)
 {
  float theta = FZ_PI * 2 * i / n;
  float cth = cosf(theta);
  float sth = sinf(theta);
  float nx = ax - cth * linewidth;
  float ny = ay + sth * linewidth;
  fz_add_line(ctx, s, ox, oy, nx, ny, 0);
  ox = nx;
  oy = ny;
 }

 fz_add_line(ctx, s, ox, oy, ax - linewidth, ay, 0);
}
