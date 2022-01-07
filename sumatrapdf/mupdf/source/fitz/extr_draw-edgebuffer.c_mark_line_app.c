
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_edgebuffer ;
typedef int fz_context ;
typedef int fixed ;


 int do_mark_line_app (int *,int *,int ,int ,int ,int ,int) ;

__attribute__((used)) static void mark_line_app(fz_context *ctx, fz_edgebuffer *eb, fixed sx, fixed sy, fixed ex, fixed ey, int rev)
{
 if (rev == 1)
 {
  fixed t;
  t = sx, sx = ex, ex = t;
  t = sy, sy = ey, ey = t;
 }
 do_mark_line_app(ctx, eb, sx, sy, ex, ey, rev);
}
