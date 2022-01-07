
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int fz_rasterizer ;
struct TYPE_3__ {float a; float c; float e; float b; float d; float f; } ;
typedef TYPE_1__ fz_matrix ;
typedef int fz_context ;


 int fz_insert_rasterizer (int *,int *,float,float,float,float,int ) ;

__attribute__((used)) static void
line(fz_context *ctx, fz_rasterizer *rast, fz_matrix ctm, float x0, float y0, float x1, float y1)
{
 float tx0 = ctm.a * x0 + ctm.c * y0 + ctm.e;
 float ty0 = ctm.b * x0 + ctm.d * y0 + ctm.f;
 float tx1 = ctm.a * x1 + ctm.c * y1 + ctm.e;
 float ty1 = ctm.b * x1 + ctm.d * y1 + ctm.f;
 fz_insert_rasterizer(ctx, rast, tx0, ty0, tx1, ty1, 0);
}
