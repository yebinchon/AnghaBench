
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int n; int alpha; int s; int * colorspace; int seps; } ;
typedef TYPE_1__ fz_pixmap ;
typedef int fz_overprint ;
typedef int fz_context ;
typedef int fz_colorspace ;
struct TYPE_10__ {int opm; scalar_t__ op; } ;
typedef TYPE_2__ fz_color_params ;


 int FZ_ERROR_GENERIC ;
 int FZ_MAX_COLORS ;
 scalar_t__ colors_supported (int *,int *,TYPE_1__*) ;
 int fz_colorspace_is_device_gray (int *,int *) ;
 int fz_colorspace_is_device_n (int *,int *) ;
 int fz_colorspace_is_subtractive (int *,int *) ;
 int fz_convert_color (int *,int *,float const*,int *,float*,int *,TYPE_2__) ;
 int fz_convert_separation_colors (int *,int *,float const*,int ,int *,float*,TYPE_2__) ;
 int * fz_device_gray (int *) ;
 int fz_set_overprint (int *,int) ;
 int fz_throw (int *,int ,char*) ;
 int * set_op_from_spaces (int *,int *,TYPE_1__*,int *,int) ;

__attribute__((used)) static fz_overprint *
resolve_color(fz_context *ctx,
 fz_overprint *op,
 const float *color,
 fz_colorspace *colorspace,
 float alpha,
 fz_color_params color_params,
 unsigned char *colorbv,
 fz_pixmap *dest)
{
 float colorfv[FZ_MAX_COLORS];
 int i;
 int n = dest->n - dest->alpha;
 fz_colorspace *model = dest->colorspace;
 int devn, devgray;
 int effective_opm;

 if (colorspace == ((void*)0) && model != ((void*)0))
  fz_throw(ctx, FZ_ERROR_GENERIC, "color destination requires source color");

 effective_opm = color_params.opm;
 devn = fz_colorspace_is_device_n(ctx, colorspace);
 devgray = fz_colorspace_is_device_gray(ctx, colorspace);


 if (color_params.op == 0 || !fz_colorspace_is_subtractive(ctx, dest->colorspace))
  op = ((void*)0);



 else if (devgray)
 {
 }




 else if (!devn && colorspace != dest->colorspace)
 {
  effective_opm = 0;
 }

 if (n == 0)
  i = 0;
 else if (devn && colors_supported(ctx, colorspace, dest))
 {
  fz_convert_separation_colors(ctx, colorspace, color, dest->seps, dest->colorspace, colorfv, color_params);
  for (i = 0; i < n; i++)
   colorbv[i] = colorfv[i] * 255;
  op = set_op_from_spaces(ctx, op, dest, colorspace, effective_opm);
 }
 else
 {
  int c = n - dest->s;
  fz_convert_color(ctx, colorspace, color, dest->colorspace, colorfv, ((void*)0), color_params);
  for (i = 0; i < c; i++)
   colorbv[i] = colorfv[i] * 255;
  for (; i < n; i++)
  {
   colorfv[i] = 0;
   colorbv[i] = 0;
  }
 }
 colorbv[i] = alpha * 255;


 if (op && !devn)
 {

  for (i = 4; i < n; i++)
   fz_set_overprint(op, i);


  if (effective_opm == 1 && colorspace != fz_device_gray(ctx))
   for (i = 0; i < n; i++)
    if (colorfv[i] == 0)
     fz_set_overprint(op, i);
 }

 return op;
}
