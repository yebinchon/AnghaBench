
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int pdf_function ;
struct TYPE_3__ {int** function; int colorspace; } ;
typedef TYPE_1__ fz_shade ;
typedef int fz_context ;


 int fz_colorspace_n (int *,int ) ;
 int pdf_eval_function (int *,int *,float*,int,int*,int) ;

__attribute__((used)) static void
pdf_sample_composite_shade_function(fz_context *ctx, fz_shade *shade, pdf_function *func, float t0, float t1)
{
 int i, n;
 float t;

 n = fz_colorspace_n(ctx, shade->colorspace);
 for (i = 0; i < 256; i++)
 {
  t = t0 + (i / 255.0f) * (t1 - t0);
  pdf_eval_function(ctx, func, &t, 1, shade->function[i], n);
  shade->function[i][n] = 1;
 }
}
