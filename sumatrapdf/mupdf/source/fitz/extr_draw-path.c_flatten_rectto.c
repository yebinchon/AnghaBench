
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {float b; float c; float a; float e; float d; float f; } ;
typedef TYPE_1__ fz_matrix ;
typedef int fz_context ;
struct TYPE_4__ {int rast; TYPE_1__ ctm; } ;
typedef TYPE_2__ flatten_arg ;


 int flatten_close (int *,void*) ;
 int flatten_lineto (int *,void*,float,float) ;
 int flatten_moveto (int *,void*,float,float) ;
 scalar_t__ fz_antidropout_rasterizer (int *,int ) ;
 int fz_insert_rasterizer_rect (int *,int ,float,float,float,float) ;

__attribute__((used)) static void
flatten_rectto(fz_context *ctx, void *arg_, float x0, float y0, float x1, float y1)
{
 flatten_arg *arg = (flatten_arg *)arg_;
 fz_matrix ctm = arg->ctm;

 flatten_moveto(ctx, arg_, x0, y0);

 if (fz_antidropout_rasterizer(ctx, arg->rast))
 {


  if (ctm.b == 0 && ctm.c == 0)
  {
   float tx0 = ctm.a * x0 + ctm.e;
   float ty0 = ctm.d * y0 + ctm.f;
   float tx1 = ctm.a * x1 + ctm.e;
   float ty1 = ctm.d * y1 + ctm.f;
   fz_insert_rasterizer_rect(ctx, arg->rast, tx0, ty0, tx1, ty1);
   return;
  }
  else if (ctm.a == 0 && ctm.d == 0)
  {
   float tx0 = ctm.c * y0 + ctm.e;
   float ty0 = ctm.b * x0 + ctm.f;
   float tx1 = ctm.c * y1 + ctm.e;
   float ty1 = ctm.b * x1 + ctm.f;
   fz_insert_rasterizer_rect(ctx, arg->rast, tx0, ty1, tx1, ty0);
   return;
  }
 }

 flatten_lineto(ctx, arg_, x1, y0);
 flatten_lineto(ctx, arg_, x1, y1);
 flatten_lineto(ctx, arg_, x0, y1);
 flatten_close(ctx, arg_);
}
