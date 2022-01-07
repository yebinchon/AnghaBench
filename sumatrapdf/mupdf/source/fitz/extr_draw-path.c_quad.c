
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
quad(fz_context *ctx, fz_rasterizer *rast, fz_matrix ctm, float flatness,
 float xa, float ya,
 float xb, float yb,
 float xc, float yc, int depth)
{
 float dmax;
 float xab, yab;
 float xbc, ybc;
 float xabc, yabc;


 dmax = fz_abs(xa - xb);
 dmax = fz_max(dmax, fz_abs(ya - yb));
 dmax = fz_max(dmax, fz_abs(xc - xb));
 dmax = fz_max(dmax, fz_abs(yc - yb));
 if (dmax < flatness || depth >= MAX_DEPTH)
 {
  line(ctx, rast, ctm, xa, ya, xc, yc);
  return;
 }

 xab = xa + xb;
 yab = ya + yb;
 xbc = xb + xc;
 ybc = yb + yc;

 xabc = xab + xbc;
 yabc = yab + ybc;

 xab *= 0.5f; yab *= 0.5f;
 xbc *= 0.5f; ybc *= 0.5f;

 xabc *= 0.25f; yabc *= 0.25f;

 quad(ctx, rast, ctm, flatness, xa, ya, xab, yab, xabc, yabc, depth + 1);
 quad(ctx, rast, ctm, flatness, xabc, yabc, xbc, ybc, xc, yc, depth + 1);
}
