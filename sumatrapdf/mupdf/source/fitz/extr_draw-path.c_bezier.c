
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_rasterizer ;
typedef int fz_matrix ;
typedef int fz_context ;


 int MAX_DEPTH ;
 float fz_abs (float) ;
 float fz_max (float,float) ;
 int line (int *,int *,int ,float,float,float,float) ;

__attribute__((used)) static void
bezier(fz_context *ctx, fz_rasterizer *rast, fz_matrix ctm, float flatness,
 float xa, float ya,
 float xb, float yb,
 float xc, float yc,
 float xd, float yd, int depth)
{
 float dmax;
 float xab, yab;
 float xbc, ybc;
 float xcd, ycd;
 float xabc, yabc;
 float xbcd, ybcd;
 float xabcd, yabcd;


 dmax = fz_abs(xa - xb);
 dmax = fz_max(dmax, fz_abs(ya - yb));
 dmax = fz_max(dmax, fz_abs(xd - xc));
 dmax = fz_max(dmax, fz_abs(yd - yc));
 if (dmax < flatness || depth >= MAX_DEPTH)
 {
  line(ctx, rast, ctm, xa, ya, xd, yd);
  return;
 }

 xab = xa + xb;
 yab = ya + yb;
 xbc = xb + xc;
 ybc = yb + yc;
 xcd = xc + xd;
 ycd = yc + yd;

 xabc = xab + xbc;
 yabc = yab + ybc;
 xbcd = xbc + xcd;
 ybcd = ybc + ycd;

 xabcd = xabc + xbcd;
 yabcd = yabc + ybcd;

 xab *= 0.5f; yab *= 0.5f;

 xcd *= 0.5f; ycd *= 0.5f;

 xabc *= 0.25f; yabc *= 0.25f;
 xbcd *= 0.25f; ybcd *= 0.25f;

 xabcd *= 0.125f; yabcd *= 0.125f;

 bezier(ctx, rast, ctm, flatness, xa, ya, xab, yab, xabc, yabc, xabcd, yabcd, depth + 1);
 bezier(ctx, rast, ctm, flatness, xabcd, yabcd, xbcd, ybcd, xcd, ycd, xd, yd, depth + 1);
}
