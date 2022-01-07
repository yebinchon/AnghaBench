
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctx {float flatness; } ;
typedef int fz_context ;


 int MAX_DEPTH ;
 float fz_abs (float) ;
 int fz_dash_lineto (int *,struct sctx*,float,float,int) ;
 float fz_max (float,float) ;

__attribute__((used)) static void
fz_dash_quad(fz_context *ctx, struct sctx *s,
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
 if (dmax < s->flatness || depth >= MAX_DEPTH)
 {
  fz_dash_lineto(ctx, s, xc, yc, 1);
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

 fz_dash_quad(ctx, s, xa, ya, xab, yab, xabc, yabc, depth + 1);
 fz_dash_quad(ctx, s, xabc, yabc, xbc, ybc, xc, yc, depth + 1);
}
