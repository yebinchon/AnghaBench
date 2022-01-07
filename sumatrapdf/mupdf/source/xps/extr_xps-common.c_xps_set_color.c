
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {float* color; float alpha; float* opacity; size_t opacity_top; int * colorspace; } ;
typedef TYPE_1__ xps_document ;
typedef int fz_context ;
typedef int fz_colorspace ;


 int fz_colorspace_n (int *,int *) ;

void
xps_set_color(fz_context *ctx, xps_document *doc, fz_colorspace *colorspace, float *samples)
{
 int i;
 int n = fz_colorspace_n(ctx, colorspace);
 doc->colorspace = colorspace;
 for (i = 0; i < n; i++)
  doc->color[i] = samples[i + 1];
 doc->alpha = samples[0] * doc->opacity[doc->opacity_top];
}
