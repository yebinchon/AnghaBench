
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_path ;
typedef int fz_context ;


 float MAGIC_CIRCLE ;
 int fz_closepath (int *,int *) ;
 int fz_curveto (int *,int *,float,float,float,float,float,float) ;
 int fz_moveto (int *,int *,float,float) ;

__attribute__((used)) static void approx_circle(fz_context *ctx, fz_path *path, float cx, float cy, float rx, float ry)
{
 float mx = rx * MAGIC_CIRCLE;
 float my = ry * MAGIC_CIRCLE;
 fz_moveto(ctx, path, cx, cy+ry);
 fz_curveto(ctx, path, cx + mx, cy + ry, cx + rx, cy + my, cx + rx, cy);
 fz_curveto(ctx, path, cx + rx, cy - my, cx + mx, cy - ry, cx, cy - ry);
 fz_curveto(ctx, path, cx - mx, cy - ry, cx - rx, cy - my, cx - rx, cy);
 fz_curveto(ctx, path, cx - rx, cy + my, cx - mx, cy + ry, cx, cy + ry);
 fz_closepath(ctx, path);
}
